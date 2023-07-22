# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amex2xero/version'

Gem::Specification.new do |spec|
  spec.name          = 'amex2xero'
  spec.version       = Amex2Xero::VERSION
  spec.authors       = ['Tim Rogers']
  spec.email         = ['me@timrogers.co.uk']

  spec.summary       = 'Converts a statement CSV exported from American ' \
                       'Express to a bank statement CSV suitable for ' \
                       'importing into Xero'
  spec.homepage      = 'http://github.com/timrogers/amex2xero'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'http://github.com/timrogers/amex2xero'
  spec.metadata['changelog_uri'] = 'http://github.com/timrogers/amex2xero/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been
  # added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4.1'
  spec.add_development_dependency 'rubocop', '~> 0.75.0'
end
