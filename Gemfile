source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Mongoid 
gem "mongoid", "~> 3.0.1"
gem "mongoid_colored_logger", :git => "git://github.com/huacnlee/mongoid_colored_logger.git"
gem 'mongoid_taggable_on', '~> 0.1.4'

# Template
gem 'slim', :git => 'https://github.com/stonean/slim.git'

# Paginate
gem 'will_paginate', '~> 3.0.3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'


# HTTP Client
gem 'faraday', '~> 0.8.0'

gem 'multi_json'

gem "sprite-factory", "1.4.1", :require => false
gem 'chunky_png', "1.2.5", :require => false

group :development, :test do
  # Deploy with Capistrano
  gem 'rspec-rails', "~> 2.0"
  gem 'factory_girl_rails'
  gem "capybara", :require => false
end
