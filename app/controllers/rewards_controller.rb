class RewardsController < ApplicationController
  def show
    @reward = Reward.find(params[:id])
    user_score = @reward.achievement
    learning_score = @reward.learning.questions.count
    @correct_ratio = (user_score.to_f / learning_score)
    if @correct_ratio > 0.75
      @reward.update(validation: true)
      @reward.save
    end
  end
end
