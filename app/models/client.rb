class Client < ApplicationRecord
    has_secure_password

    has_many :reviews
<<<<<<< HEAD

    


    has_many :venues through :reviews

=======
    has_many :venues, through: :reviews
    validates :phoneNumber, presence: true
    validates :terms_of_service, acceptance: true
>>>>>>> 3be6060 (changes)
end
