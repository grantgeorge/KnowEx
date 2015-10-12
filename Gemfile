source "https://rubygems.org"
ruby "2.2.3"

gem "rails"
gem "rails-api"
gem "pg"
gem "devise_token_auth"
gem "omniauth"
gem "active_model_serializers", "~> 0.9.0"
gem "rack-rewrite"

group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :test, :development do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "colorize"
  gem "dotenv-rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.3.0"
  gem "faker"
  gem "factory_girl_rails"
end

group :test do
  gem "guard-rspec"
  gem "rb-fsevent", require: false
  gem "growl", require: false
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :production, :staging do
  gem "rails_12factor", "0.0.3"
  gem "rack-timeout"
end