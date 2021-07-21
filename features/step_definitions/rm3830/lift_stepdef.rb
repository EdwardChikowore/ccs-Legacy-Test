And('I enter {int} for number of lift floors') do |value|
  service_requirements.lift_floor[0].data.set(value)
end

And('I enter valid data for lift floor') do
  99.times do |lift_number|
    service_requirements.lift_floor[lift_number].data.set(200)
    click_on "Add another lift (#{98 - lift_number} remaining)"
  end
end
