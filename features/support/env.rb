require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec/expectations'
require 'capybara/rspec'
require 'capybara/rspec/matchers'
include RSpec::Matchers

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'https://www.shopbop.com/'