# ActsAsMappable

This is a Rails plugin for adding the ability to generate map from ActiveRecord mode.

# Description

ActsAsMappable makes it easy to integrate a dynamic map in a Rails application. It can display geographical map tiles loaded from [OpenStreetMap][]. The included map viewer is [Leaflet][].

This is referred by [medusa](https://github.com/misasa/medusa "follow instruction").

[OpenStreetMap]: https://www.openstreetmap.org   "OpenStreetMap"
[leaflet]: https://leafletjs.com/ "Leaflet"
[medusa]: https://github.com/misasa/medusa/        "Medusa"


## Installation

Add this line to your application's Gemfile:

    gem 'acts_as_mappable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_mappable

## Usage

Generate configuration file and set your api key.

    rails generate acts_as_mappable:config

Add this line to your app/assets/javascripts/application.js

    //= require acts_as_mappable

Add this line to your model, if you need mappable.

    acts_as_mappable

Call to_map method on model that declared acts_as_mappable.

    model.to_map

acts_as_mappable options:

    lat: This option is latitude column name. Default value is :latitude.
    lng: This option is longitude column name. Default value is :longitude.
    name: This option is place name column name. Default value is nil. This option is not required.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
