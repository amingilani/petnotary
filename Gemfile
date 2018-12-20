source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'country_select'
gem 'devise'
gem 'devise-i18n'
gem 'haml-rails', '~> 1.0'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick', '~> 4.8'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'
gem 'redis', '~> 4.0'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'devise-semantified', git: 'https://github.com/ajex13/devise-semantified.git'
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
  gem 'guard'
  gem 'guard-rails', require: false
  gem 'launchy'
  gem 'rails-controller-testing' # If you are using Rails 5.x
  gem 'rspec-rails', '~> 3.8'
  gem 'shoulda-matchers', '4.0.0.rc1'
  gem 'selenium-webdriver'
end

group :development do
  gem 'annotate', git: 'https://github.com/ctran/annotate_models.git'
  gem 'database_cleaner'
  gem 'guard-livereload'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rack-livereload'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'simplecov', require: false, group: :test

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'
