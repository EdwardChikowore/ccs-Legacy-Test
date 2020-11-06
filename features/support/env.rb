require 'cucumber/rails'
require 'factory_bot_rails'
require 'selenium-webdriver'
require 'webdrivers'
require 'site_prism'
require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'securerandom'
require 'csv'
require 'json'
require 'roo'
require 'axe/cucumber/step_definitions'

require_relative '../../features/support/pages_helper'
require_relative '../support/login_helper'
require_relative '../support/capybara_driver.helper'

World(Pages)
World(FactoryBot::Syntax::Methods)
# World(Rails.application.routes.url_helpers)

configure = YAML.load_file("config/environment.yml")
ENV['TEST_ENV'] ||= 'cmpdev'
test_env = ENV['TEST_ENV'].downcase
ENV['DRIVER'] ||=  :selenium_chrome
ENV['MAX_WAIT_TIME'] ||= '30'
ENV['ACCOUNT_USERNAME'] ||= configure[test_env]['account_username']
ENV['ACCOUNT_PASSWORD'] ||= configure[test_env]['account_password']
ENV['HOST'] ||= configure[test_env]['host']

MAX_OPACITY_WAIT_TIME ||= 120
BUYER_DETAIL ||= YAML.load_file('buyer_detail.yml')
require File.dirname(__FILE__) + '/../../features/support/capybara_driver.helper'
require File.dirname(__FILE__) + '/../../features/support/login_helper'


def load_fixture(filename)
  path = Rails.root.join('features', 'support', filename)
  File.open(path, 'r', &:read)
end

ActionController::Base.allow_rescue = false


begin
  require 'database_cleaner'
  require 'database_cleaner/cucumber'
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end

# You may also want to configure DatabaseCleaner to use different strategies for certain features and scenarios.
# See the DatabaseCleaner documentation for details. Example:
#
#   Before('@no-txn,@selenium,@culerity,@celerity,@javascript') do
#     # { except: [:widgets] } may not do what you expect here
#     # as Cucumber::Rails::Database.javascript_strategy overrides
#     # this setting.
#     DatabaseCleaner.strategy = :truncation
#   end
#
#   Before('not @no-txn', 'not @selenium', 'not @culerity', 'not @celerity', 'not @javascript') do
#     DatabaseCleaner.strategy = :transaction
#   end
#

# Possible values are :truncation and :transaction
# The :transaction strategy is faster, but might give you threading problems.
# See https://github.com/cucumber/cucumber-rails/blob/master/features/choose_javascript_database_strategy.feature
Cucumber::Rails::Database.javascript_strategy = :truncation

# Dir.glob(File.join(File.dirname(__FILE__), '../../spec/factories/*.rb')).each {|f| require f }