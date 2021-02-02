class WaycommentsController < ApplicationController
  def create
    @waycomment = Waycomment.create!(@waycomment_params)
    redirect_to way_path(way.id)
  end

  private

  def comment_params
    params.require(:waycomment).permit(:text).merge(user_id: current_user.id, way_id: params[:way_id])
  end
end
