# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gestage/version'

Gem::Specification.new do |spec|
  spec.name          = 'gestage'
  spec.version       = Gestage.version
  spec.authors       = ['Igor Padoim']
  spec.email         = ['igorpadoim@gmail.com']
  spec.license       = 'Hippocratic'

  spec.summary       = 'Uma calculadora de idade gestacional.'
  spec.homepage      = 'https://nereare.github.io/gestage/'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Nereare/gestage'
  spec.metadata['changelog_uri'] = 'https://github.com/Nereare/gestage/blob/'\
                                   'master/CHANGELOG.md'
  spec.metadata['bug_tracker_uri'] = 'https://github.com/Nereare/gestage/issues'

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

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'

  spec.add_dependency 'pastel', '>= 0.7.3', '< 0.9.0'
end
