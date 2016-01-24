source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.4'
gem 'pg'
gem 'jbuilder', '~> 2.0'
gem 'active_model_serializers'

gem 'devise'
gem 'has_secure_token'

gem 'pundit'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :production do
  gem 'unicorn'
end

group :development, :test do
  gem 'powder'
  gem 'byebug'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'shoulda-matchers'
  gem 'pry'
  gem 'pry-byebug'
  gem 'database_cleaner'
end
