class Review < ApplicationRecord

    belongs_to :client
    belongs_to :venue
    validates :ratings, numericality: { less_than_or_equal_to: 5 }
    validates :ratings, numericality: { greater_than: 0 }
end
