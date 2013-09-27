source 'https://rubygems.org'
ruby '2.0.0'

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
  gem 'rspec-rails'
end

group :development do
  gem 'pry'
  gem 'quiet_assets'
  gem 'brakeman', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
end

gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'

group :test do
  gem 'factory_girl_rails'
  gem 'cucumber-rails', require: false
  gem 'capybara', '1.1.4'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'email_spec'
  gem 'simplecov', require: false
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end