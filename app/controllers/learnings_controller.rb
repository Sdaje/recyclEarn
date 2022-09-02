class LearningsController < ApplicationController
  def index
    @learnings = Learning.all
  end

  def show
    @learning = Learning.find(params[:id])
    if @learning.lectures.first.nil?
      @lecture = "This course is empty"
    else
      @lecture = @learning.lectures.first
    end
  end
end
