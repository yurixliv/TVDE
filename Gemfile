source 'https://rubygems.org'
ruby "1.9.3"
gem 'rails', '4.0.1'
gem 'rails_12factor', group: :production

gem 'pg'
gem 'turbolinks'
gem "activerecord-session_store", "~> 0.1.0"
gem "aws-sdk", '1.11.1'

# server
gem 'thin', '1.6.1'
gem 'unicorn', '4.7.0'

gem "sass", "~> 3.2.10"
gem 'jquery-rails', '3.0.4'
gem 'uglifier', '2.3.1'
gem 'sass-rails', '>= 3.2' # sass-rails needs to be higher than 3.2
gem "bootstrap-sass", "~> 3.0.2.1"
gem "bootstrap-datepicker-rails", '1.1.1.9'

# view
gem 'slim', :git => 'git://github.com/brennancheung/slim.git', :branch => 'angularjs_support'
gem "html2slim", "0.0.4"
gem 'codus', '0.0.1.6.1'
gem "bootstrap-select-rails", "~> 1.3.0.1"

# teste
group :development, :test do
  gem 'factory_girl_rails', '3.4.0'
  gem 'quiet_assets'
  gem 'debugger'
  gem 'dotenv-rails'
end

group :test do
  gem 'rspec-rails', '~> 2.0'
  # gem 'capybara'
  # gem 'launchy'
  # gem 'poltergeist'
  # gem 'database_cleaner'
  # gem 'show_me_the_cookies'
  # gem 'capybara-screenshot'
  # gem "shoulda-matchers"
  # gem 'connection_pool', '1.1.0' #for database shareing
end

