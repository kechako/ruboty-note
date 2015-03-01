# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/note/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-note"
  spec.version       = Ruboty::Note::VERSION
  spec.authors       = ["Tomato Ketchup"]
  spec.email         = ["r@554.jp"]
  spec.summary       = %q{An ruboty handler to note toking.}
  spec.description   = %q{An ruboty handler to note toking.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
