# frozen_string_literal: true

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


configure = YAML.load_file('config/environment.yml')
ENV['TEST_ENV'] ||= 'cmpdev'
test_env = ENV['TEST_ENV'].downcase
ENV['DRIVER'] ||= :selenium_chrome
ENV['MAX_WAIT_TIME'] ||= '5'
ENV['ACCOUNT_USERNAME'] ||= configure[test_env]['account_username']
ENV['ACCOUNT_PASSWORD'] ||= configure[test_env]['account_password']
ENV['HOST'] ||= configure[test_env]['host']

MAX_OPACITY_WAIT_TIME ||= 120
require "#{File.dirname(__FILE__)}/../../features/support/capybara_driver.helper"
require "#{File.dirname(__FILE__)}/../../features/support/login_helper"
require "#{File.dirname(__FILE__)}/../../features/support/download_helpers"

World(Pages)
World(DownloadHelpers)

Webdrivers::Chromedriver.update
