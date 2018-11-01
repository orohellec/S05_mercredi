class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @hash_user = params[:user]
    User.create(username: @hash_user[:username], email: @hash_user[:email], password: @hash_user[:password])
  end

  def connect
    @user = User.new
  end

  def home
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def check
    @hash_user = params[:user]
    @current_user = User.where(email: @hash_user[:email] , password: @hash_user[:password]).first
    if @current_user
      flash[:info] = "Bienvenue #{@current_user.username} !"
      session[:user_id] = @current_user
      redirect_to "/registration/home"
    else
      flash[:info] = "Échec de la connexion"
      redirect_to "/registration/home"
    end
  end
end
