class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to current_user
      # Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'invalid email/password combination' # Not quite right!
          render 'new'
    end
  end

  def destroy
     log_out
     redirect_to root_url
   end
end
