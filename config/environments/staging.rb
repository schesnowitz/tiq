require_relative 'production.rb'

Rails.application.configure do
  require_relative 'production.rb'
  
  
  # staging ------------------------------------
  

  config.action_cable.url = 'wss://sandbox.transportationiq.com/cable'
  config.action_cable.allowed_request_origins = [ 'http://sandbox.transportationiq.com',  
  /http:\/\/sandbox.transportationiq.*/ ]
  
  
  config.action_mailer.delivery_method = :smtp
   
    config.action_mailer.smtp_settings = {
      address: "smtp.gmail.com",
      port: 587,
      domain: "165.227.206.90",
      authentication: "plain",
      enable_starttls_auto: true,
      user_name: ENV["MAIL_USERNAME"], 
      password: ENV["MAIL_PASSWORD"]  
    }
  
    config.action_mailer.default_url_options = { host: "sandbox.transportationiq.com" }

end
