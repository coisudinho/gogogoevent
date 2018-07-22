Rails.application.configure do
	config.action_controller.perform_caching		= true
	config.active_record.dump_schema_after_migration	= false
	config.active_support.deprecation				= :notify
	config.cache_classes						= true
	config.consider_all_requests_local				= true
	config.eager_load							= true
	config.i18n.fallbacks						= true
	config.public_file_server.enabled				= ENV["RAILS_SERVE_STATIC_FILES"].present?
	config.read_encrypted_secrets					= true
end