# frozen_string_literal: true

require_relative "lib/rspec/prosopite/version"

Gem::Specification.new do |spec|
  spec.name = "rspec-prosopite"
  spec.version = Rspec::Prosopite::VERSION
  spec.authors = ["Hiroshi Kajisha"]
  spec.email = ["kajisha@gmail.com"]

  spec.summary = "RSpec matcher for Prosopite"
  spec.description = "RSpec matcher  for Prosopite"
  spec.homepage = "https://github.com/kajisha/rspec-prosopite"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

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

  spec.add_dependency "prosopite"
  spec.add_dependency "rspec"
end
