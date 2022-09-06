class LearningsController < ApplicationController
  def index
    if params[:query].present?
      @learnings = Learning.where(city: params[:query].capitalize)
    else
      @learnings = Learning.all
    end
    @learning = @learnings.last
  end
end
