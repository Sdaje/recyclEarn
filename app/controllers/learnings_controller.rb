class LearningsController < ApplicationController
  def index
    # Filter learnings
    if params[:search].present?
      @learnings = Learning.where("city ILIKE ? or city ILIKE 'Toutes'", params[:search].capitalize)
    else
      @learnings = Learning.all
    end
    # @learnings = Learning.all if params[:filter] == ""
    @learnings = @learnings.where(difficulty: params[:filter]) if params[:filter]

    # Sort learnings by locked status
    calculate_user_score
    @unlocked_learnings = @learnings.where("score = 200 or score <= ?", @total_score)
    @locked_learnings = @learnings.where("score > 200 and score > ?", @total_score)

    # Set a random learning which user didn't already validate
    reward = Reward.where(user_id: current_user, validation: "false").sample
    if reward.nil?
      @learning = @unlocked_learnings.last
    else
      @learning = Learning.find(reward.learning_id)
    end

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
