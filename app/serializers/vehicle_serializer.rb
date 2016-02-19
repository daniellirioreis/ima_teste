class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :type_vehicle, :description, :license_plate
end
