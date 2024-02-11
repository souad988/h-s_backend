class ImageSerializer < ActiveModel::Serializer
  attributes :name, :product_id, :default, :color_id
  belongs_to :product
  belongs_to :color, Serializer: ColorSerializer
end
