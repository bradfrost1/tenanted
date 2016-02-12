$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'tenanted/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'tenanted'
  s.version     = Tenanted::VERSION
  s.authors     = ['Frank Groeneveld']
  s.email       = ['frank@ivaldi.nl']
  s.summary     = %q{Multi-tenancy for Rails applications}
  s.description = %q{Using this gem you can add multi-tenancy to your Rails applications.}
  s.homepage    = 'https://github.com/ivaldi/tenanted'
  s.license     = 'BSD-2-Clause'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.2'

  s.add_development_dependency 'sqlite3', '~> 1.0'
  s.add_development_dependency 'pg', '~> 0.18.0'
  s.add_development_dependency 'mysql2', '~> 0.3.0'
end
