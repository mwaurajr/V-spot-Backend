class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password
end
