class Product < ApplicationRecord
  has_many :product_categories
  has_many :category, through: :product_categories
  has_one_attached :image

  private

  def self.latest_products
    Product.order('created_at DESC').limit(8)
  end
  
end
