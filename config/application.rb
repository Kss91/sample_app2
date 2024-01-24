require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp2
  class Application < Rails::Application
    config.load_defaults 7.0
    config.active_storage.variant_process = :mini_magick
  end
end
