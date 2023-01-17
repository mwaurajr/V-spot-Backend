class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :no_guest, :venue_id
end
