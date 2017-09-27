class LoadToMobileSerializer < ActiveModel::Serializer
  attributes :id, :accept, :decline, :driver_user_id, :driver_email
end
