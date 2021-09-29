require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'pry'
require 'site_prism'
require 'capybara'
require 'capybara-screenshot/cucumber'
require 'securerandom'
require 'json'
require 'axe-capybara'
require 'axe-cucumber-steps'

require_relative '../../features/support/pages_helper'
require_relative '../support/login_helper'
require_relative '../support/capybara_driver.helper'

World(Pages)

Webdrivers::Chromedriver.update

configure = if ENV['CUCUMBER_ENV'] == 'test'
              YAML.load_file('config/environment.test.yml')
            else
              YAML.load_file('config/environment.local.yml')
            end

ENV['TEST_ENV'] ||= 'cmpdev'
test_env = ENV['TEST_ENV'].downcase
ENV['DRIVER'] ||= :selenium_chrome
ENV['MAX_WAIT_TIME'] ||= '10'
ENV['ACCOUNT_USERNAME'] ||= configure[test_env]['account_username']
ENV['ACCOUNT_PASSWORD'] ||= configure[test_env]['account_password']
ENV['BUYER_USERNAME'] ||= configure[test_env]['buyer_username']
ENV['BUYER_PASSWORD'] ||= configure[test_env]['buyer_password']
ENV['HOST'] ||= configure[test_env]['host']

MAX_OPACITY_WAIT_TIME ||= 120
require "#{File.dirname(__FILE__)}/../../features/support/capybara_driver.helper"
require "#{File.dirname(__FILE__)}/../../features/support/login_helper"
