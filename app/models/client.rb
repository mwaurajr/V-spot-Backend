class Client < ApplicationRecord
    has_secure_password
    
    validates :terms_of_service, acceptance: true
    has_many :reviews
end
