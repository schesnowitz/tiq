require 'parse/stack'

# Set your specific Parse keys in your ENV. For all connection options, see
# https://github.com/modernistik/parse-stack#connection-setup
Parse.setup(app_id: ENV['PARSE_APP_ID'],
           api_key: ENV['PARSE_API_KEY'],
        master_key: ENV['PARSE_MASTER_KEY'],
        server_url: ENV['PARSE_URL'])  
        # optional
        #    logging: false,
        #      cache: Moneta.new(:File, dir: 'tmp/cache'),
        #    expires: 1 # cache ttl 1 second


# Parse.client.server_health

# Parse::User.count
# Parse.auto_upgrade!
  # property :audio_file, :file
  # property :tags, :array
  # property :released, :date
# require 'parse-ruby-client'
# Parse.create  application_id:       "<your_app_id>", # required
#               host:                 'http://localhost:1337', # required
#               path:                 '/parse', # optional, defaults to '/parse'
#               master_key:           "<your_master_key>", # optional, defaults to nil
#               api_key:              "<your_api_key>", # optional, defaults to nil
#               quiet:                false,  # optional, defaults to false
#               get_method_override:  false, # optional, defaults to true 
           