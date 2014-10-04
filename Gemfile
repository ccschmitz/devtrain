source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.1'
#ruby-gemset=devtrain

gem 'rails', '4.2.0.beta1'

gem 'acts-as-taggable-on'
gem 'bcrypt'
gem 'devise'
gem 'omniauth'
gem 'sass-rails', '5.0.0.beta1'
gem 'simple_form'
gem 'uglifier'
gem 'unicorn'

# Bower assets via rails-assets.org
gem 'rails-assets-bootstrap'
gem 'rails-assets-angular'

group :development do
  gem 'awesome_print'
  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-livereload', require: false
  gem 'guard-migrate', require: false
  gem 'guard-rspec', require: false
  gem 'meta_request'
  gem 'spring'
  gem 'terminal-notifier-guard'
end

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end
