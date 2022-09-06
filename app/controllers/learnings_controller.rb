class LearningsController < ApplicationController
  def index

    # Filter learnings
    if params[:query].present?
      @learnings = Learning.where(city: params[:query].capitalize).in_order_of(:difficulty, ["facile", "moyen", "difficile", "impossible"].reverse)
    else
      @learnings = Learning.all
    end
    if params[:difficulty].present?
      @learnings = Learning.filter_by_status(params[:difficulty])
    end

    calculate_user_score
    @unlocked_learnings = @learnings.where("score <= ?", @total_score)
    @locked_learnings = @learnings.where("score > ?", @total_score)

    # Set a random learning which user didn't already validate
    learning_id = Reward.where(user_id: current_user, validation: "false").sample
    @learning = Learning.find(learning_id.id)
  end

  def show
    @learning = Learning.find(params[:id])
    if @learning.lectures.first.nil?
      @lecture = "This course is empty"
    else
      @lecture = @learning.lectures.first
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
