module AutoolPerusal
  class Engine < ::Rails::Engine
    isolate_namespace AutoolPerusal
    initializer("autool_notebook.locales") do |app|
      tracking_logger = Logger.new(app.root.join('log', "my_engine_log.log"), 10, 30*1024*1024)
      AutoolNotebook::Engine.config.i18n.load_path += Dir[root.join('config', 'locales', '*.{rb,yml}').to_s]
      AutoolNotebook::Engine.config.i18n.default_locale = :fr
      AutoolNotebook::Engine.config.i18n.fallbacks = [:en]
      tracking_logger.debug "AutoolPerusal::Engine specific locale settings are set. Def locale == :fr\n\n"
    end


  end
end
