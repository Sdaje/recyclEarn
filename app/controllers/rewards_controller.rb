class RewardsController < ApplicationController
  def show
    @reward = Reward.find(params[:id])
    user_score = @reward.achievement
    learning_score = @reward.learning.questions.count
    @correct_ratio = (user_score.to_f / learning_score)
    @reward.validation = true if @correct_ratio > 0.75
    @reward_score = (@correct_ratio * @reward.learning.score).to_i
  end
end
