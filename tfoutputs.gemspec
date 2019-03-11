# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tfoutputs/configurator/version'

Gem::Specification.new do |spec|
  spec.name          = 'tfoutputs'
  spec.version       = TfOutputs::Configurator::VERSION
  spec.authors       = ['James Edwards']
  spec.email         = ['admin@jaetech.org']

  spec.summary       = 'Gem for grabbing variables from terraform'
  spec.description   = 'Sometimes we want to use the outputs of terraform in our ruby code for generating dashboard etc.. This gem enables this'
  spec.homepage      = 'https://github.com/jae2/ruby-tfoutputs'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|fixtures)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
  spec.add_runtime_dependency 'aws-sdk', ['>= 2', '<4']
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'vcr', '~>3.0'
  spec.add_development_dependency 'webmock', '~> 2.1'
end
