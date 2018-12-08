class VeteranSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :location
end
