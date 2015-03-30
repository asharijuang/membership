class UsersController < ApplicationController
	def new
		# Membuat variable user dan Object baru
		@user = User.new
	end

	def create
		# variable user menerima params 
		@user = User.new(user_params)
		if @user.save
			# Register berhasil dan redirect to root root_url
			redirect_to root_url, notice: "Register Successfuly"
		else
			# Jalankan method new, atau redirect ke signup
			render :new
		end
	end

	# Semua method setelah baris private, artinya hanya dapat diakses pada class ini
	private
    def user_params
    	# Hanya dapat menerima parameter berikut email, name, password, and password_conf
      	params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
