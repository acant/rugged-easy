# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rugged/easy/version'

Gem::Specification.new do |spec|
  spec.name          = 'rugged-easy'
  spec.version       = Rugged::Easy::VERSION
  spec.authors       = ['Neil E. Pearson']
  spec.email         = ['neil@helium.net.au']

  spec.summary       = %q{Rugged the Easy Way}
  spec.description   = %q{Use Rugged to manage Git repositories in a manner similar to using command-line git.}
  spec.homepage      = 'https://github.com/hx/rugged-easy'
  spec.license       = 'Apache License, Version 2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rugged', '~> ' << Rugged::Easy::VERSION[/^\d+\.\d+/]

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
