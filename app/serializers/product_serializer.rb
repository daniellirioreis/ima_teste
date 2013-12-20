class ProductSerializer < ActiveModel::Serializer
  self.root = false
  attributes :id, :status, :status_humanize
end
