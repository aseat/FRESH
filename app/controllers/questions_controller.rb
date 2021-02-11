class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @question = Question.includes(:user).order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create!(question_params)
    if @question.save
    redirect_to questions_path
    else
      render :new
    end
  end

  def edit
    redirect_to action: :index unless @question.user.id == current_user.id
  end

  
  def show
    @choice = Choice.new

  end

  def update
    if @question.update(question_params)
      redirect_to question_path
    else
      render :new
    end
  end

  def destroy
    if current_user.id == @question.user.id
      @question.destroy
      redirect_to questions_path
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:problem, :answerd_id, :image, :commentary, :category_id).merge(user_id: current_user.id)
  end

  def set_question
    @question = Question.find(params[:id])
  end


end
