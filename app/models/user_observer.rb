# require "#{Rails.root}/app/mailers/user_mailer.rb" 

class UserObserver < ActiveRecord::Observer
	# observe :user

 #  def after_save(user)
 #  	 UserMailer.welcome_email(user).deliver
 #  end

end
