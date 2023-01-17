class ManagerSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :phoneNumber, :email, :address, :password_digest, :age
end
