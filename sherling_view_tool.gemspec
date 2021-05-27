# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sherling_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = 'sherling_view_tool'
  spec.version       = SherlingViewTool::VERSION
  spec.authors       = ['Jeff Sherling']
  spec.email         = ['sherling@xmission.com']
  spec.license       = 'MIT'
  spec.date          = '2021-05-27'

  spec.summary       = 'View-specific methods for Rails apps I use.'
  spec.description   = 'Provides generated HTML data for Rails apps.'
  spec.homepage      = 'https://jsherling.github.io'

  spec.required_ruby_version = '>= 3.0.0'

  spec.files         =
    Dir.chdir(File.expand_path(__dir__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.2.18'
  spec.add_development_dependency 'minitest', '5.11.3'
  spec.add_development_dependency 'minitest-reporters', '1.3.8'
  spec.add_development_dependency 'rake', '~> 13.0.3'
end
