class LearningsController < ApplicationController
  def index
    @learning = Learning.find_by(city: params[:query])
  end

  def show
  end
end
