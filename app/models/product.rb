class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :order_details
  has_many :carts
  belongs_to :user
end
