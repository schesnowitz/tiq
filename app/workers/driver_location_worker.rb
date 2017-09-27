class DriverLocationWorker 
  include Sidekiq::Worker
  
  sidekiq_options retry: false
  
  def perform()
    driver_location = ParseDriverLocation.all.last(500) 
    driver_location.each do |location|
      
      
      parse_email      = location.email
      the_parse_id     = location.id
      parse_latitude   = location.latitude
      parse_longitude  = location.longitude
      parse_speed      = location.speed
      parse_bearing    = location.bearing
      parse_created_at = location.created_at
      parse_updated_at = location.updated_at 
      
      DriverLocation.create(driver_email: parse_email, 
                              the_parse_id: the_parse_id, 
                              latitude: parse_latitude, 
                              longitude: parse_longitude, 
                              speed: parse_speed, 
                              bearing: parse_bearing,  
                              parse_created_at: parse_created_at, 
                              parse_updated_at: parse_updated_at
                              )  
                              
                      
    end
  end
end 

Sidekiq::Cron::Job.create(name: 'Driver Location Worker - Runs every 5min', cron: '*/5 * * * *', class: 'DriverLocationWorker')
