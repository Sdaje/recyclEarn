class LearningsController < ApplicationController
  def index
    @learning = Learning.find_by(city: params[:query])
  end

  def show
    @learning = Learning.find(params[:id])
  end
end
