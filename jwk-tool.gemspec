Gem::Specification.new do |gem|
  gem.name          = "jwk-tool"
  gem.version       = "0.0.4"

  gem.authors       = ["Toyokazu Akiyama"]
  gem.email         = ["toyokazu@gmail.com"]
  gem.description   = %q{Command line tools for operating JSON Web Key}
  gem.summary       = %q{Command line tools for operating JSON Web Key}
  gem.homepage      = "https://github.com/toyokazu/jwk-tool"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.has_rdoc = false
  gem.license = "MIT"

  gem.required_ruby_version = '>= 1.9.3'

  gem.add_runtime_dependency("json-jwt", [">= 1.5.2"])

  gem.add_development_dependency("rake", [">= 0.9.2"])
end
