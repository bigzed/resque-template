# -*- encoding: utf-8 -*-
require File.expand_path('../lib/resque_template/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steve Dierker"]
  gem.email         = ["steve.dierker@flavoursys.com"]
  gem.description   = %q{This resque plugin enables you to customize the views.}
  gem.summary       = %q{This resque plugin enables you to customize the views.}
  gem.homepage      = "http://github.com/bigzed/resque-template"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "resque_template"
  gem.require_paths = ["lib"]
  gem.version       = ResqueTemplate::VERSION

  gem.add_runtime_dependency(%q<redis>, [">= 2.0.1"])
  gem.add_runtime_dependency(%q<resque>, [">= 1.20.0"])
end
