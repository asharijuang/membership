class SessionsController < ApplicationController
	def new
  	end
  	
	def create
	 	user = User.authenticate_user(params[:email], params[:password])
	 	if user
	      do_login(user)
	      redirect_to user_url(user), notice: 'Login Successfully'
		else
	      redirect_to login_url, alert: 'Invalid Email / Password'
		end
	end
	def destroy
     session[:user ] = nil
     redirect_to root_url, notice: "Logout"
	end
end
