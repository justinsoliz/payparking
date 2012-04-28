source 'https://rubygems.org'

gem 'rails', '3.2.2'

gem 'jquery-rails'

gem 'haml-rails'

gem 'dynamic_form'

gem 'devise'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
end

group :production do
  gem 'pg'
end

group :development do
  gem 'sqlite3'
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
end

group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl'
end