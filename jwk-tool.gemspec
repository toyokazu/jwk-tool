Gem::Specification.new do |spec|
  spec.name          = "jwk-tool"
  spec.version       = "0.0.6"

  spec.authors       = ["Toyokazu Akiyama"]
  spec.email         = ["toyokazu@gmail.com"]
  spec.description   = %q{Command line tools for operating JSON Web Key}
  spec.summary       = %q{Command line tools for operating JSON Web Key}
  spec.homepage      = "https://github.com/toyokazu/jwk-tool"

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.has_rdoc = false
  spec.license = "MIT"

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_runtime_dependency("json-jwt", [">= 1.5.2"])

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
