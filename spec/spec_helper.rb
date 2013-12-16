require "simplecov"

SimpleCov.start do
  add_filter "/spec/"
end

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "capybara/rspec"
