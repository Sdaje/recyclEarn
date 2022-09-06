class LearningsController < ApplicationController
  def index
    @learnings = Learning.all
  end
end
