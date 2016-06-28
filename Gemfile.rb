source 'https://rubygems.org'

gemspec

group :test do
    gem 'rspec'
    gem 'rake'
    gem "codeclimate-test-reporter", require: nil
end