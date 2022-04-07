And('the following summary text is displayed:') do |table|
  expect(requirements.service_summary.text).to eq(table.transpose.raw.flatten.join("\n"))
end

Then('I select standard {string}') do |standard|
  requirements.service_standard.send(standard).click
end

Then('I enter {string} for the service volume') do |volume|
  requirements.volume_input.set(volume)
end

And('I enter {int} for service hours') do |value|
  service_requirements.number_of_hours.set(value)
  service_requirements.service_hours_requirement.set('Test one')
end

Then('I click on select all') do
  requirements.select_all.click
end

Then('{string} should have the status {string} in {string}') do |detail, status, section|
  expect(requirements.send(section).send(detail).status.text).to eq status
end

# Estimated Annual Cost
And('I select {string} for estimated annual cost known') do |option|
  case option
  when 'Yes'
    requirements.estimated_cost_known_yes.choose
  when 'No'
    requirements.estimated_cost_known_no.choose
  end
end

And('I enter {string} for estimated annual cost') do |estimated_annual_cost|
  requirements.estimated_cost_known.set(estimated_annual_cost)
end

# TUPE
Then('I select {string} for TUPE required') do |option|
  case option
  when 'Yes'
    requirements.tupe_yes.choose
  when 'No'
    requirements.tupe_no.choose
  end
end

# Contract Period
Then('I enter {string} years and {string} months for the contract period') do |years, months|
  @contract_period_years = years.to_i
  @contract_period_months = months.to_i

  requirements.initial_call_off_period_years.set(years)
  requirements.initial_call_off_period_months.set(months)
end

Then('I enter {string} as the inital call-off period start date') do |date|
  add_initial_call_off_period_dates(*date_options(date))
end

Then('I enter an inital call-off period start date {int} years and {int} months into the future') do |years, months|
  @initial_call_off_period_start_date = Date.today.next_year(years).next_month(months)

  add_initial_call_off_period_dates(*@initial_call_off_period_start_date.strftime('%d/%m/%Y').split('/'))
end

And('I enter values for initial call-off period') do
  step 'I enter "4" years and "0" months for the contract period'
  step 'I enter an inital call-off period start date 1 years and 0 months into the future'
end

Then('my inital call off period length is {string}') do |initial_call_off_period_length|
  expect(requirements.contract_period_summary.initial_call_off_period_length).to have_content(initial_call_off_period_length)
end

Then('my inital call off period is correct given the contract start date') do
  @initial_call_off_end_date = @initial_call_off_period_start_date.next_year(@contract_period_years).next_month(@contract_period_months)
  @initial_call_off_end_date = @initial_call_off_end_date.prev_day if @initial_call_off_period_start_date.day == @initial_call_off_end_date.day
  initial_call_off_period_string = format_date_period(@initial_call_off_period_start_date, @initial_call_off_end_date)

  expect(requirements.contract_period_summary.initial_call_off_period).to have_content(initial_call_off_period_string)
end

def add_initial_call_off_period_dates(day, month, year)
  requirements.initial_call_off_period_day.set(day)
  requirements.initial_call_off_period_month.set(month)
  requirements.initial_call_off_period_year.set(year)
end

def date_options(date)
  case date.downcase
  when 'today'
    Date.today.strftime('%d/%m/%Y')
  when 'yesterday'
    Date.today.prev_day.strftime('%d/%m/%Y')
  when 'tomorrow'
    Date.today.next_day.strftime('%d/%m/%Y')
  else
    date
  end.split('/')
end

def format_date_period(start_date, end_date)
  "#{start_date.strftime('%e %B %Y')} to #{end_date.strftime('%e %B %Y')}".split(' ').join(' ')
end

# Mobilisation period
Then('I select {string} for mobilisation period required') do |option|
  case option
  when 'Yes'
    requirements.mobilisation_period_yes.choose
  when 'No'
    requirements.mobilisation_period_no.choose
  end
end

Then('I enter {string} weeks for the mobilisation period') do |mobilisation_period|
  @mobilisation_period = mobilisation_period.to_i

  requirements.mobilisation_period.set(mobilisation_period)
end

Then('mobilisation period length is {string}') do |mobilisation_period_length|
  expect(requirements.contract_period_summary.mobilisation_period_length).to have_content(mobilisation_period_length)
end

Then('the mobilisation period is correct given the contract start date') do
  mobilisation_period = format_date_period(@initial_call_off_period_start_date.prev_day(7 * @mobilisation_period + 1),
                                           @initial_call_off_period_start_date.prev_day)

  expect(requirements.contract_period_summary.mobilisation_period).to have_content(mobilisation_period)
end

# Optional call off period
Then('I select {string} for optional extension required') do |option|
  case option
  when 'Yes'
    requirements.extension_required_yes.choose
  when 'No'
    requirements.extension_required_no.choose
  end
end

Then('I enter {string} years and {string} months for optional extension {int}') do |years, months, extension|
  @contract_extentsions ||= {}
  @contract_extentsions[extension] = { years: years.to_i, months: months.to_i }

  requirements.call_off_extensions.send(:"#{extension}").years.set(years)
  requirements.call_off_extensions.send(:"#{extension}").months.set(months)
end

Then('I add another extension') do
  requirements.call_off_extensions.add_extension.click
end

Then('there are no optional call off extensions') do
  expect(requirements.contract_period_summary.call_off_extension).to have_content('None')
end

Then('the length of extension period {int} is {string}') do |extension, extension_length|
  expect(requirements.contract_period_summary.send(:"extension_#{extension}_length")).to have_content(extension_length)
end

Then('extension period {int} is correct given the contract start date') do |extension|
  extension_period = format_date_period(extension_start_date(extension), extension_end_date(extension))

  expect(requirements.contract_period_summary.send(:"extension_#{extension}_period")).to have_content(extension_period)
end

def extension_start_date(extension)
  additional_years = (1..(extension - 1)).sum { |index| @contract_extentsions[index][:years] }
  additional_months = (1..(extension - 1)).sum { |index| @contract_extentsions[index][:months] }

  @initial_call_off_end_date.next_year(additional_years).next_month(additional_months).next_day
end

def extension_end_date(extension)
  additional_years = (1..extension).sum { |index| @contract_extentsions[index][:years] }
  additional_months = (1..extension).sum { |index| @contract_extentsions[index][:months] }

  @initial_call_off_end_date.next_year(additional_years).next_month(additional_months)
end

Then('I click on the first building on the page') do
  common.answer_question.click
end

Then('I click on service standards change link') do
  service_requirements.change_link[1].click
end

And('the {string} volume details displayed are:') do |service, table|
  table.transpose.raw.flatten.each do |services|
    expect(page).to have_css("[id='#{SERVICE_TO_ID[service]}']", text: services)
  end
end

SERVICE_TO_ID = {
  'Mechanical and electrical engineering maintenance' => 'C.1-gia-volume',
  'Cleaning of external areas' => 'G.5-external_area-volume'
}.freeze

Then('I click on continue to results') do
  sleep 2
  click_on 'Continue to results'
end

Then('I change contract name') do
  @name_change = "Change_contract_name_DS_#{SecureRandom.uuid}"
  requirements.contract_name.set(@name_change)
end

Then('the contract name should include {string}') do |value|
  expect(requirements.procurement_name[1].text).to start_with(value)
end

Then('I click on the service question') do
  requirements.service_question.click
end

When('I select the services for the following buildings:') do |table|
  table.raw.flatten.each do |building_name|
    step "I click on '#{building_name}'"
    step "I select services for building '#{building_name}'"
    step 'I click on "Save and return"'
    step 'I am on "Assigning services to buildings summary" page'
  end
end

Then('I select services for building {string}') do |building_name|
  BUILDING_SERVICES[building_name].each do |service|
    step "I check '#{service}'"
  end
end

When('I answer the service questions for the following buildings:') do |table|
  table.raw.flatten.each do |building_name|
    step "I answer the service questions for building '#{building_name}'"
  end
end

Then('I answer the service questions for building {string}') do |building_name|
  step "I click on '#{building_name}'"

  BUILDING_SERVICE_QUESTIONS[building_name].each do |service, answer|
    step 'I am on the "Service requirements" page'
    step 'I click on the service question'
    step "I am on the '#{service}' page"
    step answer
    step 'I click on "Save and return"'
  end

  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

When('I select services with no service questions') do
  check 'Voice announcement system maintenance'
  check 'Airport and aerodrome maintenance services'
  check 'Specialist maintenance services'
  check 'Professional snow & ice clearance'
  check 'Building information modelling and government soft landings'
  check 'Retail services / convenience store '
  check 'Deli/coffee bar'
  check 'Events and functions'
  check 'Full service restaurant'
  check 'Hospitality and meetings'
  check 'Outside catering'
  check 'Trolley service'
  check 'Vending services (food & beverage)'
  check 'Residential catering services'
  check 'Cleaning of communications and equipment rooms'
  check 'Specialist cleaning'
  check 'Cleaning of curtains and window blinds'
  check 'Cable management'
  check 'Stores management'
  check 'Portable washroom solutions'
  check 'Administrative support services'
  check 'Additional security services'
  check 'Patrols (mobile via a specific visiting vehicle)'
  check 'Journal, magazine and newspaper supply'
  check 'Footwear cobbling services'
  check 'Provision of chaplaincy support services'
  check 'Housing and residential accommodation management'
  check 'Training establishment management and booking service'
end

When('I am on requirements page') do
  step 'I click on "Continue"'
  step 'I click on show all sections'
  step 'I check "Tees Valley and Durham"'
  step 'I click on "Continue"'
  step 'I add contract name'
  step 'I click on "Save and continue"'
  step 'I click on "Continue"'
end

Then('I answer contract details question') do
  step 'I click on "Estimated annual cost"'
  step 'I am on "Estimated annual cost" page'
  step 'I select "No" for estimated annual cost known'
  step 'I click on "Save and return"'
  step 'I click on "TUPE"'
  step 'I select "No" for TUPE required'
  step 'I click on "Save and return"'
  step 'I click on "Contract period"'
end

Then('I answer contract period question') do
  step 'I am on "Contract period" page'
  step 'I enter values for initial call-off period'
  step 'I select "No" for mobilisation period required'
  step 'I select "No" for optional extension required'
  step 'I click on "Save and continue"'
  step 'I click on "Return to requirements"'
end

Then('I select building') do
  step 'I click on "Buildings"'
  step 'I select building 1'
  step 'I click on "Save and continue"'
  step 'I click on "Return to requirements"'
end

Then('I assign services to buildings') do
  step 'I click on "Assigning services to buildings"'
  step 'I click on the first building on the page'
  step 'I click on select all'
  step 'I click on "Save and return"'
  step 'I click on "Return to requirements"'
end

Then('I navigate to results page') do
  step 'I click on "Save and return"'
  step 'I click on "Return to service requirements"'
  step 'I click on "Return to requirements"'
  step 'I click on continue to results'
end

Then('I complete service requirements questions') do
  step 'I click on "Service requirements"'
  step 'I am on "Service requirements summary" page'
  step 'I click on the first building on the page'
  step 'I click on "Answer question"'
  step 'I select standard "A"'
end

Then('I navigate to services page') do
  step 'I click on "Save and continue"'
  step 'I am on "Contract period summary" page'
  step 'I click on "Return to requirements"'
  step 'I click on "Services"'
  step 'I click on show all sections'
end

And('I select the {string} and services for scenario 3, lot 1a') do |building|
  step 'I click on "Save and continue"'
  step 'I click on "Return to requirements"'
  step 'I click on "Buildings"'
  step 'I am on "Buildings" page'
  step "I find and select \"#{building}\""
  step 'I click on "Save and continue"'
  step 'I click on "Return to requirements"'
  step 'I click on "Assigning services to buildings"'
  step 'I am on "Assigning services to buildings summary" page'
  step "I click on \"#{building}\""
  step 'I select all services for the building'
  step 'I click on "Return to requirements"'
  step 'I click on "Service requirements"'
  step 'I am on "Service requirements summary" page'
  step "I click on \"#{building}\""
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
end

And('for scenario 3, lot 1a I add the details for {string} building') do |building|
  step "I select the '#{building}' and services for scenario 3, lot 1a"
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard "A"'
  step 'I click on "Save and return"'
end

And('for scenario 3, I add the details for {string} building') do |building|
  step "I select the '#{building}' and services for scenario 3, lot 1a"
  step 'I am on the "Mobile cleaning services" page'
  step 'I enter "10000" for the service volume'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "General waste" page'
  step 'I enter "30000" for the service volume'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Recycled waste" page'
  step 'I enter "30000" for the service volume'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard "A"'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Ventilation and air conditioning system maintenance" page'
  step 'I select standard "A"'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Environmental cleaning service" page'
  step 'I select standard "A"'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mobile cleaning services" page'
  step 'I select standard "A"'
  step 'I click on "Save and return"'
end

And('I select {string} and navigate to the service requirements page') do |service|
  step "I check '#{service}'"
  step 'I am on requirements page'
  step 'I answer contract details question'
  step 'I answer contract period question'
  step 'I select building'
  step 'I assign services to buildings'
  step 'I click on "Service requirements"'
  step 'I am on "Service requirements summary" page'
  step 'I click on the first building on the page'
  step 'I am on the "Service requirements" page'
end

BUILDING_SERVICES = {
  'Aberdeen' => [
    'Building management system (BMS) maintenance', 'Environmental cleaning service', 'Fire detection and firefighting systems maintenance', 'High voltage (HV) and switchgear maintenance', 'Internal & external building fabric maintenance', 'Lifts, hoists & conveyance systems maintenance', 'Mechanical and electrical engineering maintenance', 'Security, access and intruder systems maintenance', 'Standby power system maintenance', 'Ventilation and air conditioning system maintenance', 'CAFM system', 'Helpdesk services', 'Management of billable works'
  ],
  'Belfast Building' => [
    'Asbestos management', 'Compliance plans, specialist surveys and audits', 'Conditions survey', 'Electrical testing', 'Fire risk assessments', 'Portable appliance testing', 'Statutory inspections', 'Water hygiene maintenance', 'Cleaning of external areas', 'Cleaning of integral barrier mats', 'Deep (periodic) cleaning', 'Mobile cleaning', 'Pest control services', 'Window cleaning (external)', 'Window cleaning (internal)'
  ],
  'Birmingham' => [
    'Routine cleaning', 'Handyman services', 'Move and space management - internal moves', 'Car park management and booking', 'Reception service', 'Taxi booking service', 'Voice announcement system operation', 'Cctv / alarm monitoring', 'Control of access and security passes', 'Emergency response', 'Management of visitors and passes', 'Manned guarding service', 'Patrols (fixed or static guarding)'
  ],
  'Westminster Building' => [
    'Classified waste', 'Feminine hygiene waste', 'General waste', 'Recycled waste', 'CAFM system', 'Helpdesk services', 'Management of billable works'
  ],
  '001 DA & FC Building' => [
    'Mechanical and electrical engineering maintenance', 'Ventilation and air conditioning system maintenance', 'Environmental cleaning service', 'Fire detection and firefighting systems maintenance'
  ],
  '002 DA & FC Building' => [
    'Security, access and intruder systems maintenance', 'Internal & external building fabric maintenance', 'Building management system (BMS) maintenance', 'Standby power system maintenance'
  ],
  '003 DA & FC Building' => [
    'High voltage (HV) and switchgear maintenance', 'Lifts, hoists & conveyance systems maintenance', 'Asbestos management', 'Water hygiene maintenance'
  ],
  '004 DA & FC Building' => [
    'Statutory inspections', 'Compliance plans, specialist surveys and audits', 'Conditions survey', 'Electrical testing'
  ],
  '005 DA & FC Building' => [
    'Fire risk assessments', 'Portable appliance testing', 'Routine cleaning', 'Cleaning of integral barrier mats'
  ],
  '006 DA & FC Building' => [
    'Mobile cleaning', 'Deep (periodic) cleaning', 'Window cleaning (external)', 'Window cleaning (internal)'
  ],
  '007 DA & FC Building' => [
    'Pest control services', 'Cleaning of external areas', 'Handyman services', 'Move and space management - internal moves'
  ],
  '008 DA & FC Building' => [
    'Reception service', 'Taxi booking service', 'Car park management and booking', 'Voice announcement system operation'
  ],
  '009 DA & FC Building' => [
    'Manned guarding service', 'Cctv / alarm monitoring', 'Control of access and security passes', 'Emergency response'
  ],
  '010 DA & FC Building' => [
    'Patrols (fixed or static guarding)', 'Management of visitors and passes', 'General waste', 'Recycled waste'
  ],
  '011 DA & FC Building' => [
    'Classified waste', 'Feminine hygiene waste', 'CAFM system', 'Helpdesk services', 'Management of billable works'
  ],
  '012 DA & FC Building' => [
    'Pest control services'
  ],
  '13 FC Building' => [
    'Audio visual (AV) equipment maintenance', 'Television cabling maintenance', 'Mail room equipment maintenance', 'Office machinery servicing and maintenance'
  ],
  '14 FC Building' => [
    'Voice announcement system maintenance', 'Locksmith services', 'Airport and aerodrome maintenance services', 'Specialist maintenance services'
  ],
  '15 FC Building' => [
    'Grounds maintenance services', 'Tree surgery (arboriculture)', 'Professional snow & ice clearance', 'Reservoirs, ponds, river walls and water features maintenance'
  ],
  '16 FC Building' => [
    'Internal planting', 'Cut flowers and christmas trees', 'Building information modelling and government soft landings', 'Chilled potable water'
  ],
  '17 FC Building' => [
    'Retail services / convenience store', 'Deli/coffee bar', 'Events and functions', 'Full service restaurant'
  ],
  '18 FC Building' => [
    'Hospitality and meetings', 'Outside catering', 'Trolley service', 'Vending services (food & beverage)'
  ],
  '19 FC Building' => [
    'Residential catering services', 'Reactive cleaning (outside cleaning operational hours)', 'Cleaning of communications and equipment rooms', 'Housekeeping'
  ],
  '20 FC Building' => [
    'It equipment cleaning', 'Specialist cleaning', 'Cleaning of curtains and window blinds', 'Medical and clinical cleaning'
  ],
  '21 FC Building' => [
    'Linen and laundry services', 'Clocks', 'Mail services', 'Internal messenger service'
  ],
  '22 FC Building' => [
    'Courier booking and external distribution', 'Porterage', 'Signage', 'Archiving (on-site)'
  ],
  '23 FC Building' => [
    'Furniture management', 'Space management', 'Cable management', 'Reprographics service'
  ],
  '24 FC Building' => [
    'Stores management', 'Portable washroom solutions', 'Administrative support services', 'Reactive guarding'
  ],
  '25 FC Building' => [
    'Additional security services', 'Enhanced security requirements', 'Key holding', 'Lock up / open up of buyer premises'
  ],
  '26 FC Building' => [
    'Patrols (mobile via a specific visiting vehicle)', 'Hazardous waste', 'Clinical waste', 'Medical waste'
  ],
  '27 FC Building' => [
    'Childcare facility', 'Sports and leisure', 'Driver and vehicle service', 'First aid and medical service'
  ],
  '28 FC Building' => [
    'Flag flying service', 'Journal, magazine and newspaper supply'
  ],
  '29 FC Building' => [
    'Hairdressing services', 'Footwear cobbling services'
  ],
  '30 FC Building' => [
    'Provision of chaplaincy support services', 'Housing and residential accommodation management'
  ],
  '31 FC Building' => [
    'Training establishment management and booking service'
  ],
  '32 FC Building' => [
    'First aid and medical service'
  ],
  '33 FC Building' => [
    'Catering equipment maintenance', 'Reactive maintenance services', 'Planned / group re-lamping service', 'Automated barrier control system maintenance'
  ]
}.freeze

BUILDING_SERVICE_QUESTIONS = {
  '001 DA & FC Building' => [
    ['Mechanical and electrical engineering maintenance', 'I select standard "A"'],
    ['Ventilation and air conditioning system maintenance', 'I select standard "A"'],
    ['Environmental cleaning service', 'I select standard "A"'],
    ['Fire detection and firefighting systems maintenance', 'I select standard "A"']
  ],
  '002 DA & FC Building' => [
    ['Security, access and intruder systems maintenance', 'I select standard "A"'],
    ['Internal & external building fabric maintenance', 'I select standard "A"'],
    ['Building management system (BMS) maintenance', 'I select standard "A"'],
    ['Standby power system maintenance', 'I select standard "A"']
  ],
  '003 DA & FC Building' => [
    ['Lifts, hoists & conveyance systems maintenance', 'I enter 2 for number of lift floors'],
    ['High voltage (HV) and switchgear maintenance', 'I select standard "A"'],
    ['Lifts, hoists & conveyance systems maintenance', 'I select standard "A"']
  ],
  '005 DA & FC Building' => [
    ['Portable appliance testing', 'I enter "9" for the service volume'],
    ['Routine cleaning', 'I enter "4" for the service volume'],
    ['Routine cleaning', 'I select standard "A"']
  ],
  '006 DA & FC Building' => [
    ['Mobile cleaning services', 'I enter "9" for the service volume'],
    ['Mobile cleaning services', 'I select standard "A"'],
    ['Deep (periodic) cleaning', 'I select standard "A"']
  ],
  '007 DA & FC Building' => [
    ['Handyman services', 'I enter 1248 for service hours'],
    ['Move and space management - internal moves', 'I enter 1248 for service hours'],
    ['Cleaning of external areas', 'I select standard "A"']
  ],
  '008 DA & FC Building' => [
    ['Reception service', 'I enter 1248 for service hours'],
    ['Taxi booking service', 'I enter 1248 for service hours'],
    ['Car park management and booking', 'I enter 1248 for service hours'],
    ['Voice announcement system operation', 'I enter 1248 for service hours']
  ],
  '009 DA & FC Building' => [
    ['Manned guarding service', 'I enter 1248 for service hours'],
    ['Cctv / alarm monitoring', 'I enter 1248 for service hours'],
    ['Control of access and security passes', 'I enter 1248 for service hours'],
    ['Emergency response', 'I enter 1248 for service hours']
  ],
  '010 DA & FC Building' => [
    ['Patrols (fixed or static guarding)', 'I enter 1248 for service hours'],
    ['Management of visitors and passes', 'I enter 1248 for service hours'],
    ['General waste', 'I enter "2" for the service volume'],
    ['Recycled waste', 'I enter "9" for the service volume']
  ],
  '011 DA & FC Building' => [
    ['Classified waste', 'I enter "2" for the service volume'],
    ['Feminine hygiene waste', 'I enter "2" for the service volume']
  ],
  '26 FC Building' => [
    ['Hazardous waste', 'I enter "80" for the service volume'],
    ['Clinical waste', 'I enter "80" for the service volume'],
    ['Medical waste', 'I enter "80" for the service volume']
  ],
  '33 FC Building' => [
    ['Catering equipment maintenance', 'I select standard "A"']
  ]
}.freeze
