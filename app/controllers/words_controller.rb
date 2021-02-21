class WordsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  def index
    @word = Word.includes(:user).order('yomi')
  end

  def search
    @words = Word.search(params[:keyword])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.create(word_params)
    if @word.save

      redirect_to words_path
    else
      render :new
    end
  end

  def edit
    redirect_to action: :index unless @word.user.id == current_user.id
  end

  def show
  end

  def update
    if @word.update(word_params)
      redirect_to word_path
    else
      render :new
    end
  end

  def destroy
    if current_user.id == @word.user.id
      @word.destroy
      redirect_to words_path
    else
      render :new
    end
  end

  private

  def word_params
    params.require(:word).permit(:word, :mean, :yomi, :image).merge(user_id: current_user.id)
  end

  def set_word
    @word = Word.find(params[:id])
  end
end
