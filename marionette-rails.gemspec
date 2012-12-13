# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "marionette-rails"
  s.version     = "1.0.0.rc.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Godfrey Chan"]
  s.email       = ["godfreykfc@gmail.com"]
  s.homepage    = "https://github.com/chancancode/marionette-rails"
  s.summary     = "Backbone.Marionette for Rails"
  s.description = "Vendors Backbone.Marionette for use with asset pipeline."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "rails", ">= 3.1.0"

  s.files        = Dir.glob("{lib,vendor}/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end
