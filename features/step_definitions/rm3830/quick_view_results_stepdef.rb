Then('the requirements should be {string}') do |option|
  case option
  when 'hidden'
    expect(quickview.requirements_list.visible?).to be false
  when 'shown'
    expect(quickview.requirements_list.visible?).to be true
  end
end

Then('I add contract name') do
  @name = "Auto_#{SecureRandom.uuid}"
  quickview.contract_name.set(@name)
  puts @name
end

Then('I add duplicate contract name') do
  quickview.contract_name.set(@name)
end

Then('I click on contract name') do
  click_on @name
end

And('the following is displayed on quick search filter section:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.filter-component-container', text: item)
  end
end

Then('the {string} lot is displayed') do |lot|
  case lot
  when 'up to 7m'
    expect(quickview.long_list.lot_1a.text).to eq("up to\n£7m")
  when 'between 7m and 50m'
    expect(quickview.long_list.lot_1b.text).to eq("between\n£7m-50m")
  when 'over 50m'
    expect(quickview.long_list.lot_1c.text).to eq("over\n£50m")
  end
end

And('the following heading text is displayed:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('thead tr th', text: item)
  end
end

And('I select all da services') do
  DA_SERVICES.each do |service|
    step "I check '#{service}'"
  end
end

DA_SERVICES = ['Fire detection and firefighting systems maintenance', 'High voltage (HV) and switchgear maintenance', 'Internal & external building fabric maintenance', 'Building management system (BMS) maintenance', 'Environmental cleaning service', 'Fire detection and firefighting systems maintenance', 'High voltage (HV) and switchgear maintenance', 'Internal & external building fabric maintenance', 'Lifts, hoists & conveyance systems maintenance', 'Mechanical and electrical engineering maintenance', 'Security, access and intruder systems maintenance', 'Standby power system maintenance', 'Ventilation and air conditioning system maintenance', 'Asbestos management', 'Compliance plans, specialist surveys and audits', 'Conditions survey', 'Electrical testing', 'Fire risk assessments', 'Portable appliance testing', 'Statutory inspections', 'Water hygiene maintenance', 'Cleaning of external areas', 'Cleaning of integral barrier mats', 'Deep (periodic) cleaning', 'Mobile cleaning', 'Pest control services', 'Routine cleaning', 'Window cleaning (external)', 'Window cleaning (internal)', 'Handyman services', 'Move and space management - internal moves', 'Car park management and booking', 'Handyman services', 'Move and space management - internal moves', 'Car park management and booking', 'Reception service', 'Taxi booking service', 'Voice announcement system operation', 'CCTV / alarm monitoring', 'Control of access and security passes', 'Emergency response', 'Management of visitors and passes', 'Manned guarding service', 'Patrols (fixed or static guarding)', 'Classified waste', 'Feminine hygiene waste', 'General waste', 'Recycled waste', 'CAFM system', 'Helpdesk services', 'Management of billable works'].freeze
