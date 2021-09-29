module Pages
  def account
    @account ||= Account.new
  end

  def building
    @building ||= Building.new
  end

  def common
    @common ||= Common.new
  end

  def dadraft
    @dadraft ||= RM3830::Dadraft.new
  end

  def quickview
    @quickview ||= RM3830::Quickview.new
  end

  def requirements
    @requirements ||= RM3830::Requirements.new
  end

  def service_requirements
    @service_requirements ||= RM3830::ServiceRequirements.new
  end

  def results
    @results ||= RM3830::Results.new
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
