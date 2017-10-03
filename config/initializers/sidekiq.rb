if Rails.env.development?
Sidekiq.configure_server do |config|
  
    config.redis = { url: 'redis://165.227.212.120/1'  }  
    schedule_file = "config/schedule.yml"
    if File.exists?(schedule_file)
      Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
    end 
  end
  
  Sidekiq.configure_client do |config|
    config.redis = { url: 'redis://165.227.212.120/1'  } 
  end
end

if Rails.env.production?
  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/4" } 
    schedule_file = "config/schedule.yml"
    if File.exists?(schedule_file)
      Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) 
    end 
  end
  
  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/4" } 
  end

end

if Rails.env.staging?
  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/7" } 
    schedule_file = "config/schedule.yml"
    if File.exists?(schedule_file)
      Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) 
    end 
  end
  
  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/7" } 
  end
end