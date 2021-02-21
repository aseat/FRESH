class ChoicesController < ApplicationController
  before_action :authenticate_user!
  def index
    @questions = Question.find_by(id: params[:question_id])
    @choice = Choice.last
  end

  def create
    @choice = Choice.new(choice_params)

    if @choice.save
      redirect_to question_choices_path(@choice.question)
    else
      @question = @choice.question
      @questions = @question.choices
      render 'questions/show'
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:choose_id).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
