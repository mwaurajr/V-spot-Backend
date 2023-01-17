class Manager < ApplicationRecord

     has_secure_password
     has_many :venues
     has_many :clients, through: :venues

   validates :username, uniqueness: true
   validates :terms_of_service, acceptance: true
   validates :phoneNumber,  length: { in: 10..13 }
   validates :password, length: { in: 8..20 }
   
end
