module ActsAsMappable
  module Mappable
    class Config
      cattr_accessor :api_key, :width, :height
      attr_reader :lat, :lng, :name

      def initialize(lat:, lng:, name: nil)
        @lat = lat
        @lng = lng
        @name = name
      end

      def width
        self.class.width || 300
      end

      def height
        self.class.height || 300
      end
    end
  end
end
