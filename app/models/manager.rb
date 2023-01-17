class Manager < ApplicationRecord

     has_secure_password
    
     has_many :clients, through: :venues

<<<<<<< HEAD
   
=======
     

     validates :terms_of_service, acceptance: true
     has_many :venues
     has_many :clients, through: :venues

     validates :username, uniqueness: true
     
     # has_many_attached :venues   for active_storage_attachment
>>>>>>> 3be6060 (changes)
end
