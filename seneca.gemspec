# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seneca/version'

Gem::Specification.new do |spec|
  spec.name          = "seneca"
  spec.version       = Seneca::VERSION
  spec.authors       = ["chaymaeBZ"]
  spec.email         = ["bazzaoui.chaymae@gmail.com"]

  spec.summary       = %q{A Rack based framework.}
  spec.description   = %q{A Rack based framework, but with extra awesomeness.}
  spec.homepage      = "https://github.com/chaymaeBZ/Seneca"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rack-test"

  spec.add_runtime_dependency 'rack', '> 0.0'
end
