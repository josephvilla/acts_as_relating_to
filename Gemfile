source 'https://rubygems.org'
source 'https://gem.fury.io/joseph-bigbee/'

# Declare your gem's dependencies in acts_as_relating_to.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]
#gem 'acts_as_relating_to',    path: '~/rails_projects/bigbee/acts_as_relating_to'
#gem 'bigbee_labs-associations', path: '~/rails_projects/bigbee_labs/gems/bigbee_labs-associations'

group :development do 
  gem 'guard-rspec', require: false
end

group :development, :test do
  #gem 'bigbee_labs-remote_models_base',                       path: '~/rails_projects/bigbee_labs/gems/bigbee_labs-remote_models_base'
  #gem 'bigbee_labs-http_actions',                             path: '~/rails_projects/bigbee_labs/gems/http_actions'    
  gem 'app_collaborators',                        path: '~/rails_projects/bigbee_labs/gems/app_collaborators'    
  gem 'factory_girl_rails', require: false
end

group :test do
  #gem 'factory_girl_rails'
  gem 'webmock'
  gem 'database_cleaner'
end