require_relative 'lib/coilwraps/version'

Gem::Specification.new do |spec|
  spec.name          = "coilwraps"
  spec.version       = Coilwraps::VERSION
  spec.authors       = ["Charles Peach"]
  spec.email         = ["me@charlespeach.com"]

  spec.summary       = %q{Build accurate coils!}
  spec.description   = %q{Calculate the amount of wraps for building coils}
  spec.homepage      = "https://github.com/charlespeach/coil-wraps"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/charlespeach/coil-wraps"
  spec.metadata["changelog_uri"] = "https://github.com/charlespeach/coil-wraps/commits/master"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  spec.executables = ["coilwraps"]
  spec.require_paths = ["lib"]
end
