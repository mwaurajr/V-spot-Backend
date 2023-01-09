class Venue < ApplicationRecord
    # has_many :users
    # belongs_to :user
    # belongs_to :manager
    has_many :reviews

    validates :price, presence: true
    validates :description, presence: true
    validates :capacity, presence: true
    validates :imageUrl, presence: true
    validates :location, presence: true

end
