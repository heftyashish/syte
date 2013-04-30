class User < ActiveRecord::Base
  attr_accessible :email, :info, :date, :zip, :firstname,:gender, :lastname, :company, :password, :city, :country, :home_phone, :address, :mobile_phone, :alias_address
  validates_presence_of :date, :zip, :firstname, :lastname, :password, :city, :country, :home_phone, :address
  validates :password, :zip, :length => { :minimum => 5 }
  validates :email, :presence => true, :uniqueness => true, :format => { :with => /.+\@.+\..+/, :on => :create }
  validates :zip, :home_phone, :numericality => { :only_integer => true }

  # after_save :generate_email

  # def generate_email
  # 	UserMailer.welcome_email(@user).deliver			#callback code pushed to login_controller instead.
  # end
end
