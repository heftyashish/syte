class Product < ActiveRecord::Base
  attr_accessible :price, :name, :image, :description, :old_price
  mount_uploader :image, ImageUploader
  has_many :comments, :dependent=> :destroy
end
