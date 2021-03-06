# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'with_chromedriver/version'

Gem::Specification.new do |spec|
  spec.name          = "with_chromedriver"
  spec.version       = WithChromedriver::VERSION
  spec.authors       = ["Sam Phippen"]
  spec.email         = ["samphippen@googlemail.com"]
  spec.summary       = %q{An easy way to spawn multiple chromedrivers}
  spec.description   = %q{An easy way to spawn multiple chromedrivers}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.9.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
