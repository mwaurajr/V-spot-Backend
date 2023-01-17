class VenueSerializer < ActiveModel::Serializer
  attributes :id, :description, :location, :capacity, :price, :imageUrl
end
