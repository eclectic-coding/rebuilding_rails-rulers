# frozen_string_literal: true

require_relative "lib/rulers/version"

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["eclecticcoding"]
  spec.email         = ["chuck@eclecticsaddlebag.com"]

  spec.summary       = "A Rack based framework"
  spec.description   = "A Rack based framework, but with extra awesome"
  spec.homepage      = "https://eclecticsaddlebag.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://eclecticsaddlebag.com"
  spec.metadata["changelog_uri"] = "https://eclecticsaddlebag.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "webrick"
  spec.add_runtime_dependency "erubis"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "minitest"

end
