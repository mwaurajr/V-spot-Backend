class Manager < ApplicationRecord
     has_secure_password

     #validates :terms_of_service, acceptance: true
end
