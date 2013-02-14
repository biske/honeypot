source 'https://rubygems.org'
gem 'rails', '3.2.11'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem "devise", ">= 2.1.0"

group :test, :development do
  gem 'sqlite3'
  # This includes rspec-rails in development mode so that we have access to RSpec-specific generators,
  # and it includes it in test mode in order to run the tests.
  gem "rspec-rails", "~> 2.12.2"
  
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem "factory_girl_rails"
  gem "cucumber-rails", require: false
  gem "capybara", '1.1.4'
  gem "database_cleaner"
  gem "launchy"
  gem "email_spec"  
end

group :production do
  gem 'pg', '0.12.2'
  gem 'therubyracer-heroku'
end