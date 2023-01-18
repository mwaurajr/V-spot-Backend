class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :ratings, :client_id, :venue_id
end
