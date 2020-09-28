
module Pages

  def common
    @common ||= Common.new
  end

  def detailed_summary
    @detailed_summary ||= DetailedSummary.new
  end

  def service_requirements
    @service_requirements ||= ServiceRequirements.new
  end
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


