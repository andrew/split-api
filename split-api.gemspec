# -*- encoding: utf-8 -*-
require File.expand_path('../lib/split/api/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Nesbitt"]
  gem.email         = ["andrewnez@gmail.com"]
  gem.summary       = %q{Rest API extension for Split}
  gem.homepage      = 'http://github.com/andrew/split-api'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "split-api"
  gem.require_paths = ['lib']
  gem.version       = Split::Api::VERSION

  gem.add_dependency 'split'
  gem.add_dependency 'rabl'
  gem.add_dependency 'sinatra'
  gem.add_dependency 'activesupport'
  gem.add_dependency 'builder'
  gem.add_dependency 'i18n'

  gem.add_development_dependency 'bundler',     '~> 1.0'
  gem.add_development_dependency 'rspec',       '~> 2.6'
  gem.add_development_dependency 'guard-rspec', '~> 0.4'
end