source 'https://rubygems.org'

gem 'rails', '~> 6.0.0'

gem 'mysql2'

gem 'versionist'

gem 'active_model_serializers'
gem 'rack-cors'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-rails'
gem 'simple_form'
gem 'faraday'

group :production, :staging do
  gem 'dalli'
  gem 'lograge'
  gem 'newrelic_rpm'
  gem 'puma'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-collection_matchers'
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'listen'
end

group :test do
  gem "faker"
  gem 'fakeredis'
end

group :development do
end
