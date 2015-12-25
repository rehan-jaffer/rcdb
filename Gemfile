source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'therubyracer', platforms: :ruby

# view-based libraries
gem 'haml-rails'
gem 'jquery-rails'
gem 'twitter-bootstrap-rails'

# form-related
gem 'simple_form'
gem 'virtus'

# Bower is used to manage front-end dependencies through the Bowerfile contained in the root directory
gem 'bower-rails'

gem 'paperclip'
#gem 'turbolinks'
#gem 'jbuilder', '~> 2.0'
#gem 'sdoc', '~> 0.4.0', group: :doc
gem 'active_record-acts_as'

# User auth and resource management libraries
gem 'devise'
gem 'rolify'
gem 'cancancan'

gem 'stackprof'
gem 'rack-mini-profiler'
gem 'flamegraph'

# You can comment out the following in order to avoid the newrelic profiling dependency, which you most likely won't need unless you're trying to optimize queries
# gem 'newrelic_rpm'

# JS environment, can be swapped out for your one of choice
gem 'therubyracer'

# code quality/metric tools
# rubocop - general linting and style guide checking
# bullet - catches N+1 queries
# brakeman - static code analysis for catching obvious security flaws
# deadweight - detects code that will never get reached
# sandi_meter - code metric analysis tool based on the concepts described in Sandi's book on Ruby OO Programming

gem 'rubocop'
# gem 'traceroute'
# gem 'bullet'
gem 'brakeman'
gem 'deadweight'
gem 'sandi_meter'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# With the exception of seed_dump these can all be commented out if you're not deploying code to the production or staging servers, seed_dump itself is used to dump db data in an ActiveRecord-friendly format, so if you're not doing that you can comment that out too
group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'seed_dump'
end

group :test do

  gem 'cucumber-rails', :require => false
  gem 'mutant'
  gem 'capybara'
  gem 'microdata'
  gem 'simplecov'
#  gem 'selenium-webdriver'
  gem 'capybara-webkit'
  gem 'database_cleaner'

end

group :development, :test do

  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'jasmine-rails'

  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

