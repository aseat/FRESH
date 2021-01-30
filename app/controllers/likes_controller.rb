class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def show
  end

  def create
    user = current_user
    way = Way.find(params[:way_id])
    like = Like.create(user_id: user.id, way_id: way.id)
  end

  def destroy
    user = current_user
    way = Way.find(params[:way_id])
    like = Like.find_by(user_id: user.id, way_id: way.id)
    like.delete
  end

  private

  def set_like
    @way = Way.find(params[:way_id])
  end
end
