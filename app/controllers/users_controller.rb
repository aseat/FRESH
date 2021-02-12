class UsersController < ApplicationController
  
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

 def update
  if @user.update(params)
    redirect_to user_path
  else
    render :new
  end  
end

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

end
