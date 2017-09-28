require_relative 'production.rb'

Rails.application.configure do
  config.action_cable.url = 'wss://sandbox.transportationiq.com/cable'
  config.action_cable.allowed_request_origins = [ 'http://sandbox.transportationiq.com',  
  /http:\/\/sandbox.transportationiq.*/ ]
end
