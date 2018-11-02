class SessionsController < ApplicationController
  def new

  end
  def create
    user_params = params.require(:user)
    @user = User.where(email: user_params[:email] , password: user_params[:password]).first
    if @user
      session[:auth] = @user.to_session
      @id = session[:auth].values[0]
      redirect_to "/", success: 'Connexion réussi'
    else
      redirect_to "/sessions/new", danger: 'Identifiants incorrectes'
    end
  end
  def destroy
    session.destroy
    redirect_to "/sessions/new", success: 'Vous vous êtes déconnecté'
  end
end
