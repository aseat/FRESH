class WaycommentsController < ApplicationController
  def create
    @waycomment = Waycomment.new(waycomment_params)
    if @waycomment.save
      redirect_to way_path(@waycomment.way)
    else
      @way = @waycomment.way
      @waycomments = @way.waycomment
      render 'ways/show'
    end
  end

  private

  def waycomment_params
    params.require(:waycomment).permit(:text).merge(user_id: current_user.id, way_id: params[:way_id])
  end
end
