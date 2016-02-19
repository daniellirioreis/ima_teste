class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :cel_phone
end
