class ProductsSerializer < ActiveModel::Serializer
    attributes :id, :name, :price, :like_count, :category_id, :description, :deleted, :images, :category
    has_many :images, Serializer: ImageSerializer
    belongs_to :category, Serializer: CategorySerializer
end
  