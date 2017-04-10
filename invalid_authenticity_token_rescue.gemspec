$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "invalid_authenticity_token_rescue/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "invalid_authenticity_token_rescue"
  s.version     = InvalidAuthenticityTokenRescue::VERSION
  s.authors     = ["Aaron Baldwin"]
  s.email       = ["baldwina@brightwayslearning.org"]
  s.homepage    = "https://github.com/wwidea/invalid_authenticity_token_rescue"
  s.summary     = "Rescues from Rails 5 InvalidAuthenticityToken exception"
  s.description = "Rails 5 default protect_from_forgery is to raise an exception. Some browsers trigger this exception by caching pages. This gem rescues the InvalidAuthenticityToken exception, triggers ExceptionNotifier, and redirects to the login page."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails",                   ">= 5.0.2", "<5.2"
  s.add_dependency "exception_notification",  "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
