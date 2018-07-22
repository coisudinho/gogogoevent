Rails.application.configure do
	config.active_record.migration_error		= :page_load
	config.active_support.deprecation			= :log
	config.cache_classes					= false
	config.consider_all_requests_local 		= true
	config.eager_load						= false
	config.action_mailer.default_url_options	= {
		host: 'localhost',
		port: 80
	}
	#if Rails.root.join("tmp/caching-dev.txt").exist?
	#	config.action_controller.perform_caching	= true
	#	config.cache_store						= :memory_store
	#	config.public_file_server.headers			= {}
	#else
	#	config.action_controller.perform_caching	= false
	#	config.cache_store						= :null_store
	#end
end