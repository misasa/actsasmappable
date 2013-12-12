module ActsAsMappable
  module Mappable
    module InstanceMethods
      def to_map(width: nil, height: nil)
        config = self.class.acts_as_mappable_config
        HtmlGenerator.generate(
          lat: send(config.lat),
          lng: send(config.lng),
          name: try(config.name),
          width: width || config.width,
          height: height || config.height
        )
      end
    end
  end
end
