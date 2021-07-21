And('I am on your account page') do
  expect(account.your_account_title.text).to eq('Your account')
end

Then('the following home page content is displayed:') do |table|
  page_text = account.your_account_page.text

  table.transpose.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end

Given('I visit the FM {string} start page') do |framework|
  visit "/facilities-management/#{framework}"
end
