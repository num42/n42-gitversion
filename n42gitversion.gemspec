# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'n42gitversion/version'

Gem::Specification.new do |spec|
  spec.name          = "n42gitversion"
  spec.version       = N42gitversion::VERSION
  spec.authors       = ["Wolfgang Lutz"]
  spec.email         = ["wlut@num42.de"]
  spec.summary       = %q{Get the Version of Software from the Git tags.}
  spec.description   = %q{Get the Version of Software from the Git tags. Supports branches.}
  spec.homepage      = "http://www.num42.de"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor', "~> 0.19.1"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 10.4'
end
