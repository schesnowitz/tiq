class DriverLocationsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    DriverLocationWorker.perform_async() 
  end
end
