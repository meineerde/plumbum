# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plumbum/version'

Gem::Specification.new do |spec|
  spec.name          = 'plumbum'
  spec.version       = Plumbum::VERSION
  spec.authors       = ['Holger Just']
  spec.email         = ['holger@holgerjust.de']
  spec.description   = 'Plumbum: Shell Combinators'
  spec.summary       = <<-EOF.gsub(/\n {4}/, ' ').strip
    Plumbum is a small yet feature-rich library for shell
    script-like programs. It was originally ported from Python from
    https://github.com/tomerfiliba/plumbum
  EOF
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest', '~> 5.3.3'

  spec.add_development_dependency 'rubocop', '~> 0.20.1'
end
