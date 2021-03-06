# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'blackbaud-client/version'

Gem::Specification.new do |gem|
  gem.name          = "blackbaud-client"
  gem.version       = Blackbaud::Client::Version.to_s
  gem.authors       = "Alex Dugger"
  gem.email         = "alexd@haikulearning.com"
  gem.description   = "A client for the Blackbaud API."
  gem.homepage      = "https://github.com/haikulearning/blackbaud-client"
  gem.summary       = "A client for the Blackbaud API."
  gem.files         = `git ls-files`.split($/)
  gem.require_path  = 'lib'

  gem.add_runtime_dependency  'ruby-hmac',    '~>0.4'
  gem.add_runtime_dependency  'rest-client',  '~>1.6'

  gem.add_development_dependency 'rspec', '~>3.3'
  gem.add_development_dependency 'webmock', '~>1.21'
  gem.add_development_dependency  'rake', '~>0.9'
  gem.add_development_dependency 'pry', '~>0.10'
end
