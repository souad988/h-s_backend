class ColorSerializer
  include JSONAPI::Serializer
  attributes :name, :code
end
