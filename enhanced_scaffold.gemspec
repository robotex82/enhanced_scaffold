$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enhanced_scaffold/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enhanced_scaffold"
  s.version     = EnhancedScaffold::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of EnhancedScaffold."
  s.description = "TODO: Description of EnhancedScaffold."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.22"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'generator_spec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'test-unit', '~> 3.0'
end
