class ProductSerializer
  include JSONAPI::Serializer
  attributes :name, :price, :like_count, :category_id, :description, :deleted
  has_many :stocks
  has_many :images
end
