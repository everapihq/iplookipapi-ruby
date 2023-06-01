# frozen_string_literal: true

require_relative "lib/iplookupapi/version"

Gem::Specification.new do |spec|
  spec.name = "iplookupapi"
  spec.version = Iplookupapi::VERSION
  spec.authors = ["Dominik Kukacka"]
  spec.email = ["dominik@everapi.com"]
  spec.summary = "A ruby wrapper for iplookupapi.com's API"
  spec.description = "iplookupapi.com provides a reliable & scalable IP lookup API for software developers. It uses a database of IP addresses associated with cities and other relevant information like time zone, latitude, and longitude."
  spec.homepage = "https://iplookupapi.com/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.extra_rdoc_files = ['README.md']
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/everapihq/iplookupapi-ruby"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "rest-client"
  spec.add_dependency "json"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
