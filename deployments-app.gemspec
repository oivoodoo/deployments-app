# -*- encoding: utf-8 -*-
require File.expand_path('../lib/deployments-app/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alexandr Korsak"]
  gem.email         = ["alex.korsak@gmail.com"]
  gem.description   = %q{deployments - app it's a sinatra application, you can run it as standalone app on the heroku or attach to the existing rails application.}
  gem.summary       = %q{deployments - app it's a sinatra application, you can run it as standalone app on the heroku or attach to the existing rails application.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "deployments-app"
  gem.require_paths = ["lib"]
  gem.version       = Deployments::App::VERSION

  gem.add_dependency('sinatra')
  gem.add_dependency('datamapper')
  gem.add_dependency('haml')
end

