# frozen_string_literal: true

module Pages
  def common
    @common ||= Common.new
  end

  def home_page
    @home_page ||= Home_page.new
    end
  end

  def services
    @services ||= Services.new
  end

  def calc_fees 
    @calc_fees ||=Calc_fees.new
  end

module WaitUntil
  def self.wait_until(timeout = 10, message = nil, &block)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout, message: message)
    begin
      wait.until(&block)
    rescue Net::ReadTimeout
      wait.until(&block)
    end
  end
end
