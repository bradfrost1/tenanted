$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tenanted/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tenanted"
  s.version     = Tenanted::VERSION
  s.authors     = ["Frank Groeneveld"]
  s.email       = ["frank@ivaldi.nl"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Tenanted."
  s.description = "TODO: Description of Tenanted."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
end
