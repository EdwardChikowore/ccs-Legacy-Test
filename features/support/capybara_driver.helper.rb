# frozen_string_literal: true

Capybara.configure do |config|
  config.default_driver = (ENV['DRIVER'].to_sym if ENV['DRIVER']) || :chrome_headless
  config.default_max_wait_time = 30
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
  config.visible_text_only = true
end

Capybara.register_driver :chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: { args: %w[disable-gpu] }
  )

  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: capabilities
  )
end

Capybara.register_driver :chrome_headless do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.headless!

  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
  )
end

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.register_driver :firefox_headless do |app|
  options = Selenium::WebDriver::Firefox::Options.new(args: %w[--headless])

  Capybara::Selenium::Driver.new(
      app,
      browser: :firefox,
      options: options
  )
end

Capybara.register_driver :ie do |app|
  options = Selenium::WebDriver::IE::Options.new
  options.require_window_focus = true
  options.ignore_protected_mode_settings = true
  Capybara::Selenium::Driver.new(app, browser: :internet_explorer, options: options)
end

Capybara.register_driver :safari do |app|
  Capybara::Selenium::Driver.new(app, browser: :safari)
end

Capybara::Screenshot.register_filename_prefix_formatter(:cucumber) do |scenario|
  case scenario
  when Cucumber::RunningTestCase::Scenario
    @scenario_name = scenario.name
  when Cucumber::RunningTestCase::ScenarioOutlineExample
    @scenario_name = scenario.scenario_outline.name
  end
  "screenshot_cucumber_#{@scenario_name.tr(' ', '-').gsub(%r{/^.*/cucumber//}, '')}"
end

def screenshot_path
  'tmp/cucumber_screenshots/'
end

Capybara.save_path = screenshot_path
Capybara.javascript_driver = Capybara.default_driver
Capybara.current_driver = Capybara.default_driver
Capybara.app_host = ENV['HOST'] if ENV['HOST']
Capybara.default_max_wait_time = 30

Webdrivers::Chromedriver.update
