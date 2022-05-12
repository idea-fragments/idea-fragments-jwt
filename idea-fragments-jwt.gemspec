# frozen_string_literal: true

require_relative "lib/jwt/version"

Gem::Specification.new do |spec|
  spec.name = "idea-fragments-jwt"
  spec.version = Jwt::VERSION
  spec.authors = ["Sam"]
  spec.email = ["sam@ideafragments.com"]

  spec.summary = "Helper gem to manage jwt encoding, decoding, and calculating token TTLs"
  spec.description = "Helper gem to manage jwt encoding, decoding, and calculating token TTLs"
  spec.homepage = "https://ideafragments.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/idea-fragments/idea-fragments-jwt"
  spec.metadata["changelog_uri"] = "https://github.com/idea-fragments/idea-fragments-jwt/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "activesupport", "~> 7.0"
  spec.add_dependency "jwt", "~> 2.3"
  spec.add_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
  spec.add_development_dependency "timecop", "~> 0.9"
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
