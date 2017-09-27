class ParseDriverLocation < Parse::Object
  # See: https://github.com/modernistik/parse-stack#defining-properties

  # You can change the inferred Parse table/collection name below
  # parse_class "DriverLocation"
  belongs_to :driver_user 
  property :latitude, :float
  property :longitude, :float
  property :email, :string
  property :driver_user_id, :integer
  property :location, :geo_point  
  property :speed, :float
  property :bearing, :float  
  property :the_parse_id, :string 
  property :geopoint, :string 
  # See: https://github.com/modernistik/parse-stack#cloud-code-webhooks
  # define a before save webhook for DriverLocation
  webhook :before_save do
    driver_location = parse_object
    # perform any validations with driver_location
    # use `error!(msg)` to fail the save 
    # ...
    driver_location
  end

  ## define an after save webhook for DriverLocation
  #
  # webhook :after_save do
  #   driver_location = parse_object
  #
  # end

  ## define a before delete webhook for DriverLocation
  # webhook :before_delete do
  #   driver_location = parse_object
  #   # use `error!(msg)` to fail the delete
  #   true # allow the deletion
  # end

  ## define an after delete webhook for DriverLocation
  # webhook :after_delete do
  #   driver_location = parse_object
  # end

  ## Example of a CloudCode Webhook function
  ## define a `helloWorld` Parse CloudCode function
  # webhook :function, :helloWorld do
  #   "Hello!"
  # end

end
