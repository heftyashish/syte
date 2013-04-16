class Contact < ActiveRecord::Base
  attr_accessible :product, :email, :heading, :orderid, :message
  mount_uploader :product, ProductUploader
end
