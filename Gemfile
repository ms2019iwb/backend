source 'https://rubygems.org'

gem 'rails', '5.1.6'
gem 'bcrypt', '3.1.12'
gem 'puma', '3.9.1'
gem 'dotenv-rails'

group :development, :test do
  gem 'mysql2', '>= 0.3.18', '< 0.6.0'
  gem 'byebug', '9.0.6', platform: :mri
end

group :development do
  gem 'web-console', '3.5.1'
  gem 'listen', '3.1.5'
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest', '5.11.3'
  gem 'minitest-reporters', '1.1.14'
  gem 'guard', '2.13.0'
  gem 'guard-minitest', '2.4.4'
end

group :production do
  gem 'pg', '0.20.0'
end

# Windows環境用
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
