class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date_schedule, :hour_schedule, :description_service
  has_one :vehicle
  has_one :techinical_consultant
end
