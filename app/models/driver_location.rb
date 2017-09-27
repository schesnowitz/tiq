class DriverLocation < ApplicationRecord
  # belongs_to :driver_user  
  validates :the_parse_id, uniqueness: true   
  validates :latitude, uniqueness: { scope: :longitude }
  
end
