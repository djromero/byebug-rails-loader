# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'byebug-rails-loader/version'

Gem::Specification.new do |spec|
  spec.name          = "byebug-rails-loader"
  spec.version       = ByebugRailsLoader::VERSION
  spec.authors       = ["Kent Mewhort"]
  spec.email         = ["kent@openissues.ca"]

  spec.summary       = %q{Automatically load and re-load byebug}
  spec.description   = %q{Automatically load and re-load byebug on startup and when byebug.rc changes}
  spec.homepage      = "https://github.com/kmewhort/byebug-rails-loader"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "byebug"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
