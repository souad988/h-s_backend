class ImageSerializer
  include JSONAPI::Serializer
  attributes :name, :product_id, :default, :color_id
end
