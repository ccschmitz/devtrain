source 'https://rubygems.org'

ruby '2.1.1'
#ruby-gemset=devtrain

gem 'rails', '4.1.6'

gem 'activeadmin', github: 'activeadmin', branch: 'master'
gem 'acts-as-taggable-on'
gem 'bcrypt'
gem 'better_errors'
gem 'binding_of_caller'
gem 'devise'
gem 'flutie'
gem 'foundation-rails'
gem 'intercom-rails'
gem 'jquery-rails'
gem 'omniauth'
gem 'sass-rails'
gem 'simple_form'
gem 'slim-rails'
gem 'uglifier'
gem 'unicorn'

group :development do
  gem 'awesome_print'
  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-livereload', require: false
  gem 'guard-migrate', require: false
  gem 'guard-rspec', require: false
  gem 'letter_opener'
  gem 'meta_request'
  gem 'spring'
  gem 'terminal-notifier-guard'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'shoulda-matchers'
end
