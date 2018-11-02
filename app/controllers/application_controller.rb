class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :danger
  helper_method :current_user
  private

  def current_user
    return nil if !session[:auth] || !session[:auth]['id']
    return @user if @user
    @user = User.find_by(session[:auth]['id'])
  end
end
