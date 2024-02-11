class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :role, :confirmed
end
