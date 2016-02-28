source 'https://rubygems.org'
ruby '2.3.0'

gem 'grape'
gem 'dm-postgres-adapter'
gem 'data_mapper'
gem 'warden-hmac-authentication', require: 'hmac/strategies/header'
gem 'jsonapi-serializers'

group :development, :test do
  gem 'rubocop'
  gem 'pry'
end

group :test do
  gem 'dm-sqlite-adapter'
  gem 'factory_girl'
  gem 'database_cleaner'
end
