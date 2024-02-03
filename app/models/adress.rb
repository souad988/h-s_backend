class Adress < ApplicationRecord
  validates :street, presence: true
  validates :number, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zipcode, presence: false
  has_many :user_addresses
  has_many :users, through: :user_addresses
end
