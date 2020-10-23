
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

module WaitHelpers
  def when_visible
    WaitUntil.wait_until { visible? }
    self
  end
end

module Capybara
  module Node
    class Element
      include WaitHelpers
    end
  end
end

module SitePrism
  class Section
    include WaitHelpers
  end
end


