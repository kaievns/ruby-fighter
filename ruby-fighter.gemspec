# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_fighter/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-fighter"
  spec.version       = RubyFighter::VERSION
  spec.authors       = ["Nikolay Nemshilov"]
  spec.email         = ["nemshilov@gmail.com"]

  spec.summary       = %q{Street Fighter II in Ruby}
  spec.description   = %q{An example of the usage of the Gosu library with Ruby}
  spec.homepage      = "https://github.com/MadRabbit/ruby-fighter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "gosu", "~> 0.8"
  spec.add_development_dependency "bundler", "~> 1.9"
end
