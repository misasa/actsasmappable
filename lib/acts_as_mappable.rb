require "acts_as_mappable/version"
require "acts_as_mappable/engine"
require "acts_as_mappable/mappable"

module ActsAsMappable
  def self.configure
    yield Mappable::Config
  end
end

ActiveRecord::Base.extend ActsAsMappable::Mappable
