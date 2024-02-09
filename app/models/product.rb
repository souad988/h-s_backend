class Product < ApplicationRecord
  belongs_to :category
  has_many :stocks
  has_many :images
  has_many :colors, through: :stocks
  has_many :sizes, through: :stocks
end
