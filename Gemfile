source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails'
gem 'rails-api'
gem 'pg'
gem 'devise_token_auth'
gem 'omniauth'
gem "active_model_serializers", "~> 0.9.0"
gem 'rack-rewrite'

group :test, :development do
  # Application running
  gem 'spring'

  # Testing
  gem 'rspec-rails'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'

  # E2E Testing
  # gem 'capybara', '2.4.4'
  # gem 'selenium-webdriver', '2.46.2'
  # gem 'capybara-webkit', '1.6.0'

  # Logging/debugging
  gem 'colorize'
  gem 'byebug'
  gem 'web-console'

  # gem 'growl'
  # gem 'rb-fsevent'
end

group :production, :staging do
  gem 'rails_12factor', '0.0.3'
end
