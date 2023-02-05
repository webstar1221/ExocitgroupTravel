require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Goway
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.assets.paths << "#{Rails.root}/app/assets/videos"
    config.hosts << "exoticgrouptravel.com"
    config.hosts << "https://exoticgrouptravel.com"
    config.hosts << "www.exoticgrouptravel.com"
    config.hosts << "82.180.132.184"
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
  
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
