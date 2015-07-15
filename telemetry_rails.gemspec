$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "telemetry_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "telemetry_rails"
  s.version     = TelemetryRails::VERSION
  s.authors     = ["Adrian Romero"]
  s.email       = ["aromero@manas.com.ar"]
  s.homepage    = "https://github.com/instedd/telemetry_rails"
  s.summary     = "TelemetryRails."
  s.description = "TelemetryRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 3.2"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
end
