class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.find_or_initialize_by(
      question_id: params[:question_id],
      user: current_user
    )
    @answer.option_id = params[:answer][:option].to_i
    if @answer.save
      if @question.learning.next_question(@question).present?
        redirect_to(question_path(@question.learning.next_question(@question)))
      else
        @reward = Reward.find_or_create_by(
          user: current_user,
          learning: @question.learning
        )
        redirect_to(reward_path(@reward))
      end
    else
      render "questions/show", status: :unprocessable_entity
    end
  end
end
