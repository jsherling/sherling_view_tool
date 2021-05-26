
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sherling_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "sherling_view_tool"
  spec.version       = SherlingViewTool::VERSION
  spec.authors       = ["Jeff Sherling"]
  spec.email         = ["sherling@xmission.com"]

  spec.summary       = %q{Various view-specific methods for applications I use.}
  spec.description   = %q{Provide generated HTML data for Rails applications.}
  spec.homepage      = "https://github.com/jsherling"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.17"
  spec.add_development_dependency "rake", "~> 13.0.3"
  spec.add_development_dependency "minitest", "~> 5.11.3"
end
