class Review < ApplicationRecord
     validates :ratings, numericality: { less_than_or_equal_to: 5 }

    belongs_to :client
    # belongs_to :venue
end
