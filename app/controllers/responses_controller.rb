class ResponsesController < ApplicationController
  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to answer_path(@response.answer)
    else
      @answer = @response.answer
      @responses = @answer.responses
      render 'answers/show'
    end
  end

  private

  def response_params
    params.require(:response).permit(:text).merge(user_id: current_user.id, answer_id: params[:answer_id])
  end
end
