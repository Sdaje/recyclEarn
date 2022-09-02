class LearningsController < ApplicationController
  def index
    @learnings = Learning.all
  end

  def show
    @learning = Learning.find(params[:id])
  end
end
