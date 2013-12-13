module ActsAsMappable
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      
      def copy_config_file
        copy_file "config.rb", "config/initializer/acts_as_mappable.rb"
      end
    end
  end
end
