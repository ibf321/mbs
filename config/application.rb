require_relative 'boot'
ENV['RAILS_ADMIN_THEME'] = 'rollincode'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mbs
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.i18n.enforce_available_locales = false
    config.i18n.default_locale =:"pt-BR"
    config.assets.initialize_on_precompile = false
  end
end
