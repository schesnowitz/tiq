
# Sidekiq.configure_server do |config|
#   config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/4" } 
#   schedule_file = "config/schedule.yml"
#   if File.exists?(schedule_file)
#     Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) 
#   end 
# end

# Sidekiq.configure_client do |config|
#   config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/5" } 
# end



# Local   'redis://165.227.220.31:6379/0' }
  #   url: redis://:redispass@redis-10902.c9.us-east-1-4.ec2.cloud.redislabs.com:10902
Sidekiq.configure_server do |config|

  # config.redis = { url: 'redis://:redispass@redis-10902.c9.us-east-1-4.ec2.cloud.redislabs.com:10902' } 
  config.redis = { url: 'redis://165.227.212.120/1'  }  
  schedule_file = "config/schedule.yml"
  if File.exists?(schedule_file)
    Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
  end 
end

Sidekiq.configure_client do |config|
  # config.redis = { url: 'redis://:redispass@redis-10902.c9.us-east-1-4.ec2.cloud.redislabs.com:10902' } 
  config.redis = { url: 'redis://165.227.212.120/1'  } 
end

  # redis-cli -h 165.227.212.120 ping
  # sudo service redis-server start  
  