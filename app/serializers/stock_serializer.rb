class StockSerializer < ActiveModel::Serializer
  attributes :quantity, :size_id, :color_id, :product_id
  belongs_to :product
  belongs_to :color, Serializer: ColorSerializer
  belongs_to :size, Serializer: SizeSerializer
end
