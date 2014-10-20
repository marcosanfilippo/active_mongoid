# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_mongoid/version'

Gem::Specification.new do |spec|
  spec.name          = "active_mongoid"
  spec.version       = ActiveMongoid::VERSION
  spec.authors       = ["Bryce Schmidt"]
  spec.email         = ["bryce.schmidt@sportngin.com"]
  spec.summary       = %q{ActiveMongoid provides a relational interface between ActiveRecord and Mongoid objects.}
  spec.description   = %q{ActiveMongoid facilitates usage of both ActiveRecord and Mongoid in a single app by providing an inteface for inter-ORM relations.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "activerecord"
  spec.add_dependency "mongo", "~> 1.9.0"
  spec.add_dependency "bson_ext", "~> 1.9.0"
  spec.add_dependency "mongoid", "~> 2.8.1"
  spec.add_dependency "after_do"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "pry"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency 'simplecov-gem-adapter'
  spec.add_development_dependency 'coveralls'
end
