# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nis_cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'nis-cli'
  spec.version       = NisCli::VERSION
  spec.authors       = ['Yoshiyuki Ieyama']
  spec.email         = ['yukku0423@gmail.com']

  spec.summary     = 'Ruby CUI client for the NEM Infrastructure Server API'
  spec.description = 'Ruby CUI client for the NEM Infrastructure Server API'
  spec.homepage    = 'https://github.com/44uk/nis-cli'
  spec.license = 'MIT'

  spec.required_ruby_version = '>= 2.2'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.47'
  spec.add_development_dependency 'pry', '~> 0.10'

  spec.add_dependency 'nis-ruby', '~> 0.0.1'
  spec.add_dependency 'thor', '~> 0.19'
end
