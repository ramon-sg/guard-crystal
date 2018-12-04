
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "guard/crystal/version"

Gem::Specification.new do |spec|
  spec.name          = "guard-crystal"
  spec.version       = Guard::GUARD_CRYSTAL_VERSION
  spec.authors       = ["ramón soto"]
  spec.email         = ["ddsstr@gmail.com"]
  spec.summary       = %q{Guard gem for Crystal}

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "guard", "~> 2.1"
  spec.add_dependency "guard-compat", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end