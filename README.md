Honeypots is marketplace application for finishing tasks.

# Setup

# Clone

git clone https://github.com/biske/honeypot.git


# Install gems
cd honeypot
bundle install


# Set environment variables:

ENV['DEVISE_SECRET_KEY']
ENV['FACEBOOK_APP_ID'] 
ENV['RECAPTCHA_PUBLIC_KEY'] 
ENV['RECAPTCHA_PRIVATE_KEY']
ENV['SECRET_TOKEN']
ENV['SECRET_KEY_BASE']

How to set environment variable:
http://railsapps.github.io/rails-environment-variables.html