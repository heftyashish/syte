class LoginController < ApplicationController

	def index
		
	end

	def enter
		@user=User.where(:email=>params[:email],:password=>params[:password])
		if @user.empty?
			redirect_to login_index_path
		else
			# session[:admin]=params[:username]
			render 'my_account.html.erb'
		end
	end

	def authentication
		# puts "==============================="		
		# puts  @err
	end

	def my_account
		temp=Hash.new
		temp[:date]=params[:days]+ "-" +params[:months]+ "-" +params[:years]
	
		params.delete :days
		params.delete :months
		params.delete :years
		params.delete :controller
		params.delete :action

		params.merge! temp
		temp.clear

		@user= User.new(params)
		@user.save!
		# UserMailer.welcome_email(@user).deliver
		rescue ActiveRecord::RecordInvalid => e
		 flash[:notice]=@user.errors.full_messages
		 # @user.errors.full_messages.each do |message|
       				 
		 redirect_to login_authentication_path		
	end

end

