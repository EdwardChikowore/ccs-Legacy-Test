# frozen_string_literal: true

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

  def detailed_summary
    @detailed_summary ||= DetailedSummary.new
  end

  def dadraft
    @dadraft ||= Dadraft.new
  end

  def quickview
    @quickview ||= Quickview.new
  end

  def requirements
    @requirements ||= Requirements.new
  end

  def service_requirements
    @service_requirements ||= ServiceRequirements.new
  end

  def results
    @results ||= Results.new
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
