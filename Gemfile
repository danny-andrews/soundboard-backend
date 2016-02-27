source 'https://rubygems.org'
ruby '2.3.0'

gem 'sinatra'
gem 'dm-postgres-adapter'
gem 'data_mapper'
gem 'warden-hmac-authentication', require: 'hmac/strategies/header'

group :development, :test do
  gem 'rubocop'
  gem 'pry'
end

group :test do
  gem 'dm-sqlite-adapter'
  gem 'factory_girl'
  gem 'database_cleaner'
end
