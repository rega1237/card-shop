class Product < ApplicationRecord
  has_many :product_categories
  has_many :category, through: :product_categories
  has_one_attached :image
end
