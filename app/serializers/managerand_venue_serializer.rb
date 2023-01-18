class ManagerandVenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :phoneNumber, :email, :address, :password, :age, :venues
end
