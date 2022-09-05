class LearningsController < ApplicationController
  def index
    if params[:query].present?
      @learnings = Learning.where(city: params[:query].capitalize)
    else
      @learnings = Learning.all
    end
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
