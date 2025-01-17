# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '5.3.2'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'pg', '~> 1.1'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.0.rc2'
gem 'sassc-rails'
gem 'simple_form'
gem 'sprockets-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'pry'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.8'
  gem 'rubocop', require: false
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'solargraph'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
