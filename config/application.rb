require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gal
  class Application < Rails::Application
    config.site = {
      name: 'GAL'
    }
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework false
      g.jbuilder false
    end 
  end
end
