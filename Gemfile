source 'https://rubygems.org'
gem 'rails', '4.0.0'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'devise', '>= 3.0.0'
gem 'recaptcha', :require => 'recaptcha/rails'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'gmaps4rails'

gem 'carrierwave'
gem 'rmagick'

# Decrecation
gem 'protected_attributes'
gem 'rails-observers'
gem 'actionpack-page_caching'
gem 'actionpack-action_caching'
gem 'activerecord-deprecated_finders'

group :test, :development do
  gem 'sqlite3'
  # This includes rspec-rails in development mode so that we have access to RSpec-specific generators,
  # and it includes it in test mode in order to run the tests.
  gem "rspec-rails"
  
end

group :development do
  gem 'pry'
end

gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'

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