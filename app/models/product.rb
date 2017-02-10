class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country_origin, :presence => true
  validates :ingredients, :presence => true
  validates :image, :presence => true
end
