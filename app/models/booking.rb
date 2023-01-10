class Booking < ApplicationRecord

    validates :num_of_guests, presence: true
    validates :endDate, comparison: { greater_than_or_equal_to: :startDate }
end
