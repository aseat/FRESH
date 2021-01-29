class WaysController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_way, only: [:show, :edit, :update, :destroy]
  
  def index
    @way = Way.includes(:user).order('created_at DESC')
  end
  
  def new
    @way = Way.new
  end

  def create
    @way = Way.create(way_params)
    if @way.save

      redirect_to ways_path
    else
      render :new
    end
  end

  def edit
    redirect_to action: :index unless @way.user.id == current_user.id
  end
  
  def show
  end

  def update
    if @way.update(way_params)
      redirect_to way_path
    else
      render :new
    end
  end

  def destroy
    if current_user.id == @way.user.id
      @way.destroy
      redirect_to ways_path
    else
      render :new
    end
  end
  
  private

  def way_params
    params.require(:way).permit(:name, :text, :youtube_url, :image,:video).merge(user_id: current_user.id)
  end

  def set_way
    @way = Way.find(params[:id])
  end

end
