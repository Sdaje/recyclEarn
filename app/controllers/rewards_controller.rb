class RewardsController < ApplicationController
  def show
    @reward = Reward.find(params[:id])
    raise
  end
end
