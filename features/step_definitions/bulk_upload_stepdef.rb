# frozen_string_literal: true

And(/^I upload the "([^"]*)" file$/) do |file_type|
  next if file_type == 'no file'

  file_name = case file_type
              when 'empty'
                'Empty Spreadsheet Template.xlsx'
              when 'incomplete'
                'Incomplete Spreadsheet Template copy.xlsx'
              when 'wrong template'
                'Wrong Template.xlsx'
              when 'wrong file type'
                'Wrong File.txt'
              when 'complete'
                'Normal Spreadsheet.xlsx'
              when 'missing regions'
                'Missing Regions Spreadsheet.xlsx'
              when 'further competition'
                'Further Competition Spreadsheet.xlsx'
              end

  file_path = File.expand_path(File.join(__dir__, '..', '..', 'bulk_upload_spreadsheets', file_name))
  attach_file('facilities_management_spreadsheet_import[spreadsheet_file]', file_path)
end

And(/^my upload status is "([^"]*)"$/) do |state|
  expect(requirements.bulk_upload_status.text).to eq state
end

And(/^I wait for the upload to finish$/) do
  30.times do
    if requirements.bulk_upload_status.text == 'UPLOAD IN PROGRESS'
      sleep 1
      page.driver.browser.navigate.refresh
    else
      break
    end
  end
end
