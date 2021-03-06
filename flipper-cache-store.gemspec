# -*- encoding: utf-8 -*-
require File.expand_path('../lib/flipper/version', __FILE__)

flipper_cache_store_files = lambda do |file|
  file =~ /cache_store/
end

Gem::Specification.new do |gem|
  gem.authors       = ['John Nunemaker']
  gem.email         = ['nunemaker@gmail.com']
  gem.summary       = 'ActiveSupport::Cache::Store adapter for Flipper'
  gem.description   = 'ActiveSupport::Cache::Store adapter for Flipper'
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/jnunemaker/flipper'

  gem.files         = `git ls-files`.split("\n").select(&flipper_cache_store_files) + ['lib/flipper/version.rb']
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n").select(&flipper_cache_store_files)
  gem.name          = 'flipper-cache-store'
  gem.require_paths = ['lib']
  gem.version       = Flipper::VERSION

  gem.add_dependency 'flipper', "~> #{Flipper::VERSION}"
  gem.add_dependency 'activesupport', '>= 3.2', '< 6'
end
