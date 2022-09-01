class RewardsController < ApplicationController
  def show
    @reward = Reward.find(params[:id])
    user_score = @reward.achievement
    learning_score = @reward.learning.questions.count
    @correct_ratio = user_score / learning_score
    @reward.validation = true if @correct_ratio > 0.8
  end
end
