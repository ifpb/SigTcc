require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sigtcc
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
#Respc configuration
#config.generators do |g|
#  g.test_framework :rspec
    I18n.available_locales = [:en, :"pt-BR"]
    I18n.default_locale = :"pt-BR"
  end
end
