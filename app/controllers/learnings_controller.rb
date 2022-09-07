class LearningsController < ApplicationController
  def index
    # Set a random learning which user didn't already validate
    reward = Reward.where(user_id: current_user, validation: "false").sample
    if reward.nil?
      @learning = Learning.last
    else
      @learning = Learning.find(reward.learning_id)
    end

    # Filter learnings
    if params[:query].present?
      @learnings = Learning.where(city: params[:query].capitalize)
    else
      @learnings = Learning.all
    end
    @learnings = Learning.where(difficulty: params[:filter]) if params[:filter]

    # Sort learnings by locked status
    calculate_user_score
    @unlocked_learnings = @learnings.where("score <= ?", @total_score)
    @locked_learnings = @learnings.where("score > ?", @total_score)

    # Render learnings
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text {
        render  partial: "shared/learnings_filter",
                locals: { unlocked_learnings: @unlocked_learnings, locked_learnings: @locked_learnings },
                formats: [:html]
      }
    end
  end

  private

  def calculate_user_score
    user = current_user
    @total_score = 0
    user.rewards.each do |reward|
      @total_score += reward.validation ? reward.learning.score : -reward.learning.penality
    end
  end
end
