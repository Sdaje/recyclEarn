class LectureController < ApplicationController
  def show
    @lecture = Lecture.find(params[:id])
    @learning = @lecture.learning
  end
end
