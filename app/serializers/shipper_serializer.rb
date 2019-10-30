class ShipperSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :client_secret, :response
end
