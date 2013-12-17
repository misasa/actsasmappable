# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_mappable/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_mappable"
  spec.version       = ActsAsMappable::VERSION
  spec.authors       = ["Masafumi Imaoka"]
  spec.email         = ["m-imaoka@probizmo.co.jp"]
  spec.description   = %q{Generate google map from object.}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "railties", "~> 4.0"
  spec.add_runtime_dependency "activerecord", "~> 4.0"
  spec.add_runtime_dependency "actionpack", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails", "~> 4.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec", "~> 3.0.0.beta"
  spec.add_development_dependency "capybara", "~> 2.2"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "simplecov"
  # spec.add_development_dependency "jasminerice" 0.1.0がgithubからしか取得できないため、Gemfileに記述
  spec.add_development_dependency "therubyracer"
  spec.add_development_dependency "jquery-rails"
end
