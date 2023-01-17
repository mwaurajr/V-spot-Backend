class Client < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :venues, through: :reviews

   validates :username, uniqueness: true
   validates :phoneNumber,  length: { in: 10..13 }
   validates :password, length: { in: 8..20 }
   validates :terms_of_service, acceptance: true

    
end
