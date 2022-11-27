require_relative 'lib/shared_helpers/version'

Gem::Specification.new do |spec|
  spec.name        = 'shared_helpers'
  spec.version     = SharedHelpers::VERSION
  spec.authors     = ['calebanderson']
  spec.email       = ['caleb.r.anderson.1@gmail.com']
  spec.homepage    = 'https://github.com/calebanderson/shared_helpers'
  spec.summary     = 'A set of helpers that have been useful across multiple libraries'
  spec.description = 'A set of helpers that have been useful across multiple libraries'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'TODO: Set to http://mygemserver.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/calebanderson/shared_helpers'
  spec.metadata['changelog_uri'] = 'https://github.com/calebanderson/shared_helpers/blob/master/CHANGELOG.md'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 4.2'
end
