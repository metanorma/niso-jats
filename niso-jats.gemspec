# frozen_string_literal: true

require_relative "lib/niso/jats/version"

Gem::Specification.new do |spec|
  spec.name = "niso-jats"
  spec.version = Niso::Jats::VERSION
  spec.authors = ["Ribose Inc."]
  spec.email = ["open.source@ribose.com'"]

  spec.summary = "NISO JATS format parser"
  spec.description = "NISO JATS format parser"
  spec.homepage = "https://github.com/metanorma/niso-jats"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/metanorma/niso-jats/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem
  # that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.0.0"

  spec.add_dependency "bigdecimal"
  spec.add_dependency "lutaml-model"
  spec.add_dependency "nokogiri", "~> 1.16.7"
  spec.add_dependency "zeitwerk", "~> 2.6.18"
  spec.metadata["rubygems_mfa_required"] = "true"
end
