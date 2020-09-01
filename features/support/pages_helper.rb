
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
