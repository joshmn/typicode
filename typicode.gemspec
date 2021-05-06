require_relative 'lib/typicode/version'

Gem::Specification.new do |spec|
  spec.name          = "typicode"
  spec.version       = Typicode::VERSION
  spec.authors       = ["Josh Brody"]
  spec.email         = ["git@josh.mn"]

  spec.summary       = "An example REST client."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/joshmn/typicode-example"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]
  spec.add_dependency 'http', '~> 4.4'
end
