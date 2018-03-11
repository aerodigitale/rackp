require File.expand_path("../lib/rackp", __FILE__)
require 'date'
Gem::Specification.new do |gem|
  gem.name    = 'rackp'
  gem.version = RackP::VERSION
  gem.date    = Date.today.to_s
  gem.homepage = "https://github.com/aerodigitale/rackp"
  gem.summary = "Rack-style processing gem"
  gem.license = "MIT"

  gem.authors  = ['Clément Alexandre']

  # ensure the gem is built out of versioned files
  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
end
