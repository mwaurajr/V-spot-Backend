class VenueandReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :location, :capacity, :price, :imageUrl, :reviews

  has_many :reviews
end
