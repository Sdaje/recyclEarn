class AnswersController < ApplicationController
  def create
    @answer = Answer.new
    @question = Question.find(params[:question_id])
    @answer = Answer.create(
      question_id: params[:question_id],
      option_id: params[:answer][:option].to_i,
      user: current_user
    )
    if @answer.save
      if @question.learning.next_question(@question).present?
        redirect_to(question_path(@question.learning.next_question(@question)))
      else
        # redirect_to reward
        redirect_to(reward_path(@question.learning.reward_ids))
      end
    else
      render "questions/show", status: :unprocessable_entity
    end
  end
end
