class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age, :address, :phoneNumber, :email
end
