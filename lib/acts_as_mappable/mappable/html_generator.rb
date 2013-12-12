module ActsAsMappable
  module Mappable
    module HtmlGenerator
      extend ActionView::Helpers::TagHelper

      def generate(lat:, lng:, name: nil, width:, height:)
        style = "width: #{width}px; height: #{height}px;"
        options = {
          id: "map-canvas",
          "data-lat" => lat,
          "data-lng" => lng,
          style: style
        }
        options[:title] = name if name
        content_tag(:div, nil, options)
      end

      module_function :generate
    end
  end
end
