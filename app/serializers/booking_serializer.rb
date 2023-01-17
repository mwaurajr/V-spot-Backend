class BookingSerializer < ActiveModel::Serializer
  attributes :id, :venue_id, :start_time, :end_time 
end
