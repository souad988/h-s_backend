class Adress < ApplicationRecord
  belongs_to :user
  validates :street, presence: true
  validates :number, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zipcode, presence: false
end
