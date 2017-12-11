module ActsAsMappable
  module Mappable
    module HtmlGenerator
      extend ActionView::Helpers::TagHelper

      def generate(lat:, lng:, zoom: 12, name: nil, width:, height:)
        style = "width: #{width}px; height: #{height}px;"
        url_root = ENV['RAILS_RELATIVE_URL_ROOT'] || ""
        url_root += "/" unless url_root.end_with?("/")
        options = {
          id: "map-canvas",
          "data-lat" => lat,
          "data-lng" => lng,
          "data-zoom" => zoom,
          "data-url-root" => url_root,
          style: style
        }
        options[:title] = name if name
        content_tag(:div, nil, options)
      end

      module_function :generate
    end
  end
end
