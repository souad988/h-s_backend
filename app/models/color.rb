class Color < ApplicationRecord
    has_many :stocks
    has_many :products, through: :stocks
      # Attributes
  attribute :name, :string
  attribute :code, :string

  # Validations
  validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :code, presence: true, uniqueness: true, length: { maximum: 7 },
  format: { with: /\A#[0-9A-Fa-f]{6}\z/ }
end
