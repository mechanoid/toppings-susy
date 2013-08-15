# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toppings/susy/version'

Gem::Specification.new do |spec|
  spec.name        = "toppings-susy"
  spec.version     = Toppings::Susy::VERSION
  spec.authors     = ["Falk Hoppe"]
  spec.email       = ["falkhoppe81@gmail.com"]
  spec.description = %q{this gem sports support for the susy sass library for toppings}
  spec.summary     = %q{this gem sports support for the susy sass library for toppings}
  spec.homepage    = ""
  spec.license     = "MIT"

  spec.files         = %w(LICENSE.txt README.md toppings-susy.gemspec)
  spec.files         += Dir.glob("bin/**/*")
  spec.files         += Dir.glob("lib/**/*.rb")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  #spec.add_development_dependency "toppings"

  spec.add_dependency "compass"
  spec.add_dependency "susy", ">= 1.0.8"
end
