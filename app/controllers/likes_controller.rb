class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(like_params)
    @way = @like.way
    respond_to :js if @like.save
  end

  def destroy
    @like = Like.find_by(id: params[:id])
    @way = @like.way
    respond_to :js if @like.destroy
  end

  private

  def like_params
    params.permit(:way_id)
  end
end
