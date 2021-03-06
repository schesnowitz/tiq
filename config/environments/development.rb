Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_caching = true
  config.action_mailer.perform_deliveries = true 
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  config.textris_delivery_method = :twilio
  
  # !!!!!!!!!!! had to add this to allow requests when moved over to margos
  
  Rails.application.config.action_cable.allowed_request_origins = ['http://localhost:3000/'] 
  
  
  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  config.action_cable.url = 'http://localhost:3000/'
  config.action_cable.allowed_request_origins = [ 'http://localhost:3000/', 
  /https:\/\/localhost:3000.*/ ] 
 

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:                  'smtp.office365.com',
    port:                      587,
    authentication:           :login,  
    user_name:                 ENV["MAIL_USERNAME"], 
    password:                  ENV["MAIL_PASSWORD"], 
    domain:                   'transportationiq.com',     
    enable_starttls_auto:      true, 
  } 



# WORKS!

  # ActionMailer::Base.delivery_method = :smtp
  # ActionMailer::Base.smtp_settings = {
  #   address:                  'smtp.zoho.com',
  #   port:                     587,
  #   authentication:           :plain,
  #   enable_starttls_auto:     true, 
  #   user_name:                ENV["MAIL_USERNAME"],  
  #   password:                 ENV["MAIL_PASSWORD"], 
  #   domain:                   'margoscargo.com' 

  # }

  # Works using steve not actionmailer

  # ActionMailer::Base.delivery_method = :smtp
  # ActionMailer::Base.smtp_settings = {
  #   address:                  'smtp.office365.com',
  #   port:                     25,
  #   authentication:           :login, 
  #   enable_starttls_auto:     true, 
  #   user_name:                "TransportIQApp@transportationiq.com",  
  #   password:                 "Tr@nsp0rt1Q", 
  #   domain:                   'transportationiq.com'

  # }   

  # ActionMailer::Base.delivery_method = :smtp
  # ActionMailer::Base.smtp_settings = {
  #   address:                  'smtp.office365.com',
  #   port:                     25,
  #   authentication:           :login, 
  #   enable_starttls_auto:     true, 
  #   user_name:                "TransportIQApp@transportationiq.com",  
  #   password:                 "Tr@nsp0rt1Q", 
  #   domain:                   'transportationiq.com'

  # }   


  # WORKS!

  # config.action_mailer.delivery_method = :smtp
  
    # config.action_mailer.smtp_settings = {
    #   address: "smtp.gmail.com",
    #   port: 587,
    #   domain: "example.com",
    #   authentication: "plain",
    #   enable_starttls_auto: true,
    #   user_name: ENV["MAIL_USERNAME"], 
    #   password: ENV["MAIL_PASSWORD"]  
    # } 
  
    config.action_mailer.default_url_options = { host: "localhost:3000" }
  # config.action_mailer.default_url_options = { host: 'chesnowitz.com' } 
  # config.action_mailer.default_url_options = { host: 'transportationiq.com' } 

  

end