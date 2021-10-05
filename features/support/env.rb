require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'pry'
require 'site_prism'
require 'capybara'
require 'capybara-screenshot/cucumber'
require 'securerandom'
require 'csv'
require 'json'
require 'roo'
require 'nokogiri'
require 'axe/cucumber/step_definitions'

require_relative '../../features/support/pages_helper'
require_relative '../support/login_helper'
require_relative '../support/capybara_driver.helper'
require_relative '../support/download_helpers'

World(Pages)
World(DownloadHelpers)

Webdrivers::Chromedriver.update

configure = YAML.load_file('config/environment.yml')
ENV['TEST_ENV'] ||= 'cmpdev'
test_env = ENV['TEST_ENV'].downcase
ENV['SERVICE'] ||= 'legal_services'
ENV['DRIVER'] ||= :selenium_chrome
ENV['MAX_WAIT_TIME'] ||= '5'
ENV['ACCOUNT_USERNAME'] ||= configure[test_env]['account_username']
ENV['ACCOUNT_PASSWORD'] ||= configure[test_env]['account_password']
ENV['HOST'] ||= configure[test_env]['host'][ENV['SERVICE']]

MAX_OPACITY_WAIT_TIME ||= 120
require "#{File.dirname(__FILE__)}/../../features/support/capybara_driver.helper"
require "#{File.dirname(__FILE__)}/../../features/support/login_helper"
require "#{File.dirname(__FILE__)}/../../features/support/download_helpers"
