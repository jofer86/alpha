class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      redirect_to users_path(user)
    else
      render 'new'
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end