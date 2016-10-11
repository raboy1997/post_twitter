Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.twitter_key = "2enbUJenmO3js0pyymVrpixfP"
  config.twitter_secret = "zkyEDfWkGGDuvgycMT3l3CAoi71TRoHXOH8Yf1QqgyxVwTw5P8"
end
