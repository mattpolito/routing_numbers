# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'routing_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = "routing_numbers"
  spec.version       = RoutingNumbers::VERSION
  spec.authors       = ["Matt Polito"]
  spec.email         = ["matt.polito@gmail.com"]

  spec.summary       = %q{Wrapper around the routingnumbers.info API}
  spec.description   = %q{Wrapper around the routingnumbers.info API}
  spec.homepage      = "https://github.com/mattpolito/routing_numbers"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_dependency "rest-client"
  spec.add_dependency "oj"
  spec.add_dependency "addressable"
end
