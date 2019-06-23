# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pragma/contract/version'

Gem::Specification.new do |spec|
  spec.name          = 'pragma-contract'
  spec.version       = Pragma::Contract::VERSION
  spec.authors       = ['Alessandro Desantis']
  spec.email         = ['desa.alessandro@gmail.com']

  spec.summary       = 'Form objects on steroids for your HTTP API.'
  spec.homepage      = 'https://github.com/pragmarb/pragma-contract'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'adaptor', '~> 0.2.1'
  spec.add_dependency 'dry-types', '~> 0.12.0'
  spec.add_dependency 'dry-validation', '~> 0.11.1'
  spec.add_dependency 'reform', '~> 2.2'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
