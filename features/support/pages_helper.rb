module Pages
  def common
    @common ||= Common.new
  end

  def home_page
    @home_page ||= HomePage.new
  end
end

def services
  @services ||= Services.new
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
