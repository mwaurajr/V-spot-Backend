class Client < ApplicationRecord
    has_secure_password

    #validates :terms_of_service, acceptance: true
     validates :username, uniqueness: true
     validates :password, presence: true
     validates :password_confirmation, presence: true
     
    has_many :reviews
end
