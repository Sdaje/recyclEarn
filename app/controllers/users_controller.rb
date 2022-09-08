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
      @badges << "badges/#{reward.learning.title.downcase.gsub(" ", "_").gsub("é","e").gsub("è","e").gsub("à","a")}.png"
    end
    @learnings_todo = Learning.where("city = ? AND score = 200 OR score <= ?", @user.city, @total_score) - @learnings_done
    @badges_locked = @learnings_todo.map do |learning|
      "badges/#{learning.title.downcase.gsub(" ", "_").gsub("é","e").gsub("è","e").gsub("à","a")}.png"
    end
  end
end
