class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to 'https://models-workspace-jsimbartl.c9users.io/controller1/home'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to 'https://models-workspace-jsimbartl.c9users.io/controller1/home'
  end
end
