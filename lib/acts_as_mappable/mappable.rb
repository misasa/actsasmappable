require "acts_as_mappable/mappable/config"
require "acts_as_mappable/mappable/html_generator"
require "acts_as_mappable/mappable/instance_methods"

module ActsAsMappable
  module Mappable
    def acts_as_mappable(lat: :latitude, lng: :longitude, name: nil)
      @acts_as_mappable_config = Config.new(lat: lat, lng: lng, name: name)
      include Mappable::InstanceMethods
    end

    def acts_as_mappable_config
      @acts_as_mappable_config
    end
  end
end
