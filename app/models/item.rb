class Item < ApplicationRecord
  has_many :join_cart_items
  has_many :carts, through: :join_cart_items

  has_many :join_order_items
  has_many :orders, through: :join_order_items
  
  validates :title, presence: true,
           length: {minimum: 2}
  validates :description, presence: true,
           length: {maximum: 500}
  validates :price, presence: true
  validates :image_url, presence: true
end
