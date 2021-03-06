# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-digitalocean/version'

Gem::Specification.new do |gem|
  gem.name          = "vagrant-digitalocean"
  gem.version       = VagrantPlugins::Digitalocean::VERSION
  gem.authors       = ["John Bender"]
  gem.email         = ["john.m.bender@gmail.com"]
  gem.description   = %q{Enables Vagrant to manage Digital Ocean droplets}
  gem.summary       = gem.description

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "faraday", "~> 0.8.6"
  gem.add_dependency "json", "~> 1.6.6"
  gem.add_dependency "log4r", "~> 1.1.9"
end
