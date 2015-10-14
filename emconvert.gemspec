# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emconvert/version'

Gem::Specification.new do |spec|
  spec.name          = "emconvert"
  spec.version       = Emconvert::VERSION
  spec.authors       = ["Bert Hajee"]
  spec.email         = ["info@enterprisemodules.com"]
  spec.licenses      = ['Apache2']
  spec.summary       = %q{Enterprise Modules module converter}
  spec.homepage      = 'https://github.com/enterprisemodules/emconvert'
  spec.description   = <<-EOD

  This utility automatically converts your Puppet class from using the 
  Open Source Oracle and WebLogic modules into using the supported modules
  from Enterprise Modules.  

  EOD

  # # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
