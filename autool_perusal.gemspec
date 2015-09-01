$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "autool_perusal/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "autool_perusal"
  s.version     = AutoolPerusal::VERSION
  s.authors     = ["Arnaud Drazek"]
  s.email       = ["adrazek@gmail.com"]
  s.homepage    = "http://autool.no-sandbox.com"
  s.summary     = "Summary of AutoolPerusal."
  s.description = "Description of AutoolPerusal."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  #s.add_development_dependency "sqlite3"
end
