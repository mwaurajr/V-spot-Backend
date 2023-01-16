class Manager < ApplicationRecord
     has_secure_password

     validates :username, uniqueness: true

     #validates :terms_of_service, acceptance: true
     #has_many_attached :venues
end
