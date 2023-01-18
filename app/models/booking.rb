class Booking < ApplicationRecord
    belongs_to :client
    belongs_to :venue
#     validates :start_time, comparison: { greater_than_or_equal_to: :end_time }
#      validate :check_availability

#   def check_availability
#     if self.booking_time.where(start_time: start_time, end_time: end_time).exists?
#       errors.add(:base, "booked")
#     end
#   end
end
