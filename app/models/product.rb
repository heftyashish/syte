class Product < ActiveRecord::Base
  attr_accessible :price, :name, :image
  mount_uploader :image, ImageUploader
end
