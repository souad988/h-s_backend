class ProductSerializer
  include JSONAPI::Serializer
  attributes :name, :price, :like_count, :category_id, :description, :deleted
  has_many :stocks, Serializer: StockSerializer
  has_many :images, Serializer: ImageSerializer
  belongs_to :category, Serializer: CategorySerializer
end
