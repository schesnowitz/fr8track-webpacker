if Rails.env.development?
  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/0" }
    schedule_file = "config/schedule.yml"
    if File.exists?(schedule_file)
      Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) 
    end 
  end


  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/0" }
  end 
end

if Rails.env.production?
  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/1" }
    schedule_file = "config/schedule.yml"
    if File.exists?(schedule_file)
      Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) 
    end 
  end


  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://#{ENV['DATA_REDIS_HOST']}:6379/1" }
  end 
end