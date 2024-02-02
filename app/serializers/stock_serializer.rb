class StockSerializer
  include JSONAPI::Serializer
  attributes :quantity, :size_id, :color_id, :product_id
end
