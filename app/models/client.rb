class Client < ApplicationRecord
    has_secure_password

    has_many :reviews

    


    has_many :venues, through: :reviews

    has_many :venues, through: :reviews
    validates :phoneNumber, presence: true
    validates :terms_of_service, acceptance: true
end
