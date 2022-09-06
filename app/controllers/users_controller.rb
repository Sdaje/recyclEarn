class UsersController < ApplicationController
  def dashboard
    @fun_fact = FunFact.all.sample.content
    @user = current_user
    @total_score = 0
    @learnings_done = []
    @badges = []
    @user.rewards.each do |reward|
      @total_score += reward.validation ? reward.learning.score : -reward.learning.penality
      @learnings_done << reward.learning
      @badges << "badges/#{reward.learning.title.downcase.gsub(" ", "_").gsub("é","e").gsub("è","e").gsub("à","a")}.jpg"
    end
    @learnings_todo = Learning.where(city: @user.city) - @learnings_done
  end
end
