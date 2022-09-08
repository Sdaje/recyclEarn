class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.find_or_initialize_by(
      question_id: params[:question_id],
      user: current_user
    )
    if params[:answer][:option].present?
      @answer.option_id = @question.options.find_by('content like ?', params[:answer][:option]).id
    end
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
      @options = @question.options
      @answer = Answer.new
      @user_question_number = @question.questions_left
      render "questions/show", status: :unprocessable_entity
    end
  end
end
