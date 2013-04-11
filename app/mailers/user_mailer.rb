class UserMailer < ActionMailer::Base
  default :from => "syte@syte.com"
  # User.where(:email=>"your email id").destroy_all

  def welcome_email(user)
    @user = user
    @url  = "syte.com/home"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end
