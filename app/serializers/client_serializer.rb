class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age, :address, :phoneNumber, :email, :password
end
