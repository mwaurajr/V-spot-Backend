class Venue < ApplicationRecord

    belongs_to :manager
    has_many :bookings
    has_many :clients, through: :reviews


end
