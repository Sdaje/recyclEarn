class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @options = @question.options
    @answer = Answer.new
    @user_question_number = @question.questions_left
    # @learning = Learning.where(params[:id])
    # @questions = @learning.question.all
    # respond_to do |format|
    #   if @question.save
    #     format.html { redirect_to @question, notice: 'answer registered.' }
    #     format.json { redirect_to :new, status: :created, location: @question }
    #   else
    #     format.html { render :show }
    #     format.json { render json: @question.error, status: :unprocessable_entity }
    #   end
    # end
  end
end
