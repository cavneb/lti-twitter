module TwitterLti
  class Engine < ::Rails::Engine
    isolate_namespace TwitterLti
    
    initializer "lti_provider.load_app_instance_data" do |app|
      TwitterLti.setup do |config|
        config.app_root = app.root
      end
    end

    initializer "lti_provider.lti_config" do |app|
      TwitterLti::TwitterLtiConfig.setup!
    end
  end
end
