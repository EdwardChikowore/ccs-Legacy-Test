And(/^I select all services listed for Management of billable works$/) do
  common.management_billable.select_all.click
end

And(/^I select all cafm service$/) do
  common.cafm.select_all.click
end

And(/^I select all catering services$/) do
  common.catering.select_all.click
end

And(/^The following catering services displayed:$/) do |table|
    table.transpose.raw.flatten.each do |item|
      expect(page).to have_css('#procurement-services-accordion-content-4', text: item)
  end
end

And(/^I select all cleaning services$/) do
  common.cleaning.select_all.click
end

And(/^The following cleaning services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-5', text: item)
  end
end

And(/^I select all helpdesk services$/) do
  common.helpdesk.select_all.click
end

And(/^The following helpdesk service is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-12', text: item)
  end
end

And(/^I select all horticultural services$/) do
  common.horticultural.select_all.click
end

And(/^The following horticultural services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-2', text: item)
  end
end

And(/^I select all maintenance services$/) do
  common.maintenance.select_all.click
end

And(/^The following maintenance services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-1', text: item)
  end
end

And(/^I select all miscellaneous services$/) do
  common.catering.select_all.click
end

And(/^The following miscellaneous services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-10', text: item)
  end
end

And(/^I select all reception services$/) do
  common.reception.select_all.click
end

And(/^The following reception services are  displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-7', text: item)
  end
end

And(/^I select all security services$/) do
  common.security.select_all.click
end

And(/^The following security services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-8', text: item)
  end
end

And(/^I select all statutory services$/) do
  common.statutory.select_all.click
end

And(/^The following statutory services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-3', text: item)
  end
end

And(/^I select all waste services$/) do
  common.waste.select_all.click
end

And(/^The following waste services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-9', text: item)
  end
end

And(/^I select all workplace services$/) do
  common.workplace.select_all.click
end

And(/^The following workplace services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#procurement-services-accordion-content-6', text: item)
  end
end





And(/^The following description is displayed:$/) do |table|
    table.transpose.raw.flatten.each do |item|
      expect(page).to have_css('div label span', text: item)
  end
end

