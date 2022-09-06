class LearningsController < ApplicationController
  def index
    if params[:query].present?
      @learnings = Learning.where("city ilike ? or city ilike 'toutes'", params[:query])
    else
      @learnings = Learning.all
    end
    @learning = @learnings.last
  end
end
