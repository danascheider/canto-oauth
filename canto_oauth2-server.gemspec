# -*- encoding: utf-8 -*-
require File.expand_path('../lib/oauth2-server/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Continanza", "Dana Scheider"]
  gem.email         = ["christopher.continanza@gmail.com", "dana.scheider@gmail.com"]
  gem.description   = %q{Canto Oauth2 Authorization Server}
  gem.summary       = %q{OAuth2 authorization server for Canto Career Management based on Christ Continanza's oauth2-server gem}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "canto_oauth2-server"
  gem.require_paths = ["lib", "bin"]
  gem.version       = '0.0.1'

  gem.add_dependency 'sinatra', '~> 1.4', '>= 1.4.6'
  gem.add_dependency 'json', '~> 1.8', '>= 1.8.2'
  gem.add_dependency 'uuidtools', '~> 2.1', '>= 2.1.5'
  gem.add_dependency 'mysql2', '~> 0.3', '>= 0.3.8'
  gem.add_dependency 'sequel', '~> 4.22'
  gem.add_dependency 'thin', '~> 1.6', '>= 1.6.3'
end
