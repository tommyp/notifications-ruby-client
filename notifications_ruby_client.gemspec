# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = ''
  spec.version       = '0.1'
  spec.authors       = ['Daz Ahern']
  spec.email         = ['daz.ahern@digital.cabinet-office.gov.uk']

  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.add_dependency('faraday', '~> 0.9')
  spec.add_dependency('faraday_middleware', '~> 0.10')

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = Dir['lib/*.rb']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'bundler', '~> 1.11'
  spec.add_dependency 'rake', '~> 10.0'
  spec.add_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'webmock', '~> 1.22'
end
