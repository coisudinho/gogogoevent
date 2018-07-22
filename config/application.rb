require_relative 'boot'

require "rails"

require "action_view/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_model/railtie"
require "active_record/railtie"
require "sprockets/railtie"

# Pick the frameworks you want:
# require "action_cable/engine"
# require "active_job/railtie"
# require "active_storage/engine"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Gogogo
	class Application < Rails::Application
		config.load_defaults 5.2

		config.assets.css_comressor		= :sass
		config.assets.compile			= true
		config.assets.debug				= false
		config.assets.digest			= false
		config.assets.quiet				= true

		config.generators.assets			= false
		config.generators.helper			= false
		config.generators.system_tests	= false

		config.perform_caching			= false
		config.cache_store				= :null_store
		config.logger					= ActiveSupport::Logger.new nil
	end
end