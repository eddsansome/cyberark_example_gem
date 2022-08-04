# frozen_string_literal: true

require_relative 'lib/cyborg/version'

Gem::Specification.new do |spec|
  spec.name = 'cyborg'
  spec.version = Cyborg::VERSION
  spec.authors = ['Edd Sansome']
  spec.email = ['edward.sansome@smartpension.co.uk']

  spec.summary = 'no'
  spec.description = 'also no'
  spec.homepage = 'https://www.google.com'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://www.google.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://www.google.com'
  spec.metadata['changelog_uri'] = 'https://www.google.com'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'pry', '~> 0.12.2'
  spec.add_development_dependency 'rake', '~> 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'vcr', '~> 6.0'
  spec.add_development_dependency 'webmock', '~> 3.8.1'

  spec.add_dependency 'activesupport', '> 4.2'
  spec.add_dependency 'httparty', '~> 0.13'
  # Uncomment to register a new dependency of your gem

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
