# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adminlte2/bootstrap/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "adminlte2-bootstrap-rails"
  spec.version       = Adminlte2::Bootstrap::Rails::VERSION
  spec.authors       = ["rneuo"]
  spec.email         = ["t4keru.rneuo@gmail.com"]

  spec.summary       = %q{Integrates the AdminLTE2 with Ruby on Rails.}
  spec.description   = %q{AdminLTE2 is a Twitter Bootstrap theme for backend.}
  spec.homepage      = "https://github.com/rneuo/adminlte2-bootstrap-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "bootstrap-sass", "~> 3.3.6"
  spec.add_runtime_dependency "font-awesome-rails"
  spec.add_runtime_dependency "ionicons-rails"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
