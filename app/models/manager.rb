class Manager < ApplicationRecord

     has_secure_password
     has_many :clients, through: :venues
     has_many :venues


     validates :terms_of_service, acceptance: true
     validates :username, uniqueness: true
     
     # has_many_attached :venues   for active_storage_attachment
end
