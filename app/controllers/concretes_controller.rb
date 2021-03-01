class ConcretesController < ApplicationController
  def index
    @ways = Way.order(created_at: :desc).limit(1)
    @words = Word.order(created_at: :desc).limit(1)
    @questions = Question.order(created_at: :desc).limit(1)
    @answers = Answer.order(created_at: :desc).limit(3)
  end
end
