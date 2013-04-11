ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "ashish.gandhy@gmail.com",
  :password             => "inebriation",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
# require 'development_mail_interceptor'
ActionMailer::Base.default_url_options[:host] = "localhost:3000"
# ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if  Rails.env.development?