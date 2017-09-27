class DriverLocationSerializer < ActiveModel::Serializer
  attributes :id, :driver_email, :parse_id, :latitude, :longitude, :speed, :bearing, :parse_created_at, :parse_updated_at, :driver_user_id
end
