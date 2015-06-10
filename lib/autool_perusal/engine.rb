module AutoolPerusal
  class Engine < ::Rails::Engine
    isolate_namespace AutoolPerusal
    
    config.to_prepare do
      #BaseToolEngine.new.initialize_engineinitalize_engine
    end

    initializer("autool_perusal.locales") do |app|
      tracking_logger = Logger.new(app.root.join('log', "my_engine_log.log"), 10, 30*1024*1024)
      AutoolPerusal::Engine.config.i18n.load_path += Dir[root.join('config', 'locales', '*.{rb,yml}').to_s]
      AutoolPerusal::Engine.config.i18n.default_locale = :fr
      AutoolPerusal::Engine.config.i18n.fallbacks = [:en]
      tracking_logger.debug "AutoolPerusal::Engine specific locale settings are set. Def locale == :fr\n\n"
    end

    initializer("autool_perusal.migrations") do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

  end
end
