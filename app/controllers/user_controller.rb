class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @hash_user = params[:user]
    User.create(username: @hash_user[:username], email: @hash_user[:email], password: @hash_user[:password])
  end
end
