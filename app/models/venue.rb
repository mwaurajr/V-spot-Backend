class Venue < ApplicationRecord
     belongs_to :manager
     has_many :clients through: :reviews
    # has_many :bookings



    validates :name, presence: true
end
