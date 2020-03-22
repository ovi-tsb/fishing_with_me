source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
group :development, :test do
  gem 'byebug', platform: :mri
  # gem 'sqlite3'
  gem 'rspec-rails', '~> 3.6'
  gem "factory_girl_rails", "~> 4.0"
  gem 'simplecov', :require => false, :group => :test
end

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'cancancan', '~> 1.10'
gem 'acts_as_votable'
gem 'will_paginate', '~> 3.1.0'
gem 'rails-controller-testing'
gem "paperclip", ">= 5.0"
gem "aws-sdk", ">= 2.0"


group :production do
  gem 'pg'
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
