# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rb_etl/version'

Gem::Specification.new do |spec|
  spec.name          = "rb_etl"
  spec.version       = RbEtl::VERSION
  spec.authors       = ["Brandon Rice"]
  spec.email         = ["brice84@gmail.com"]
  spec.summary       = ""
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mongo"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end