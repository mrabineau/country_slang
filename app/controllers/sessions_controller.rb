class SessionsController < ApplicationController

  def new
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to countries_path, notice:  'Logged in!'
    else

    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to countries_path, notice: 'Logged in!'
    else
      flash.now.alert = 'Invalid login credentials - try again!'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to countries_path, notice: "Logged out!"
  end

end
