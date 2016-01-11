# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sushi_lang/version'

Gem::Specification.new do |spec|
  spec.name          = "sushi_lang"
  spec.version       = SushiLang::VERSION
  spec.authors       = ["suzuki.sh"]
  spec.email         = ["s2terminal@github.com"]

  spec.summary       = %q{Sushi Language}
  spec.description   = %q{This is the perfect language.}
  spec.homepage      = "https://github.com/s2terminal"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
#  if spec.respond_to?(:metadata)
#    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
#  else
#    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
#  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "sushi_lang"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
