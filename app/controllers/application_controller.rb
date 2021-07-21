class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :text, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :text, :image])
  end

  def check_guest
    email = resource&.email || params[:user][:email].downcase
    redirect_to root_path, alert: 'ゲストユーザーの変更・削除はできません。' if email == 'guest@example.com'
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path 
  end

end
