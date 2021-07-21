And('I upload the {string} file') do |file_type|
  next if file_type == 'no file'

  file_path = File.expand_path(File.join('bulk_upload_spreadsheets', FILE_TYPE_TO_FILE_NAME[file_type]))
  attach_file('facilities_management_rm3830_spreadsheet_import[spreadsheet_file]', file_path)
end

FILE_TYPE_TO_FILE_NAME = {
  'empty' => 'Empty Spreadsheet Template.xlsx',
  'incomplete' => 'Incomplete Spreadsheet Template copy.xlsx',
  'wrong template' => 'Wrong Template.xlsx',
  'wrong file type' => 'Wrong File.txt',
  'complete' => 'Normal Spreadsheet.xlsx',
  'missing regions' => 'Missing Regions Spreadsheet.xlsx',
  'further competition' => 'Further Competition Spreadsheet.xlsx'
}.freeze

And('my upload status is {string}') do |state|
  expect(requirements.bulk_upload_status.text).to eq state
end

And('I wait for the upload to finish') do
  60.times do
    break if requirements.bulk_upload_status.text != 'UPLOAD IN PROGRESS'

    sleep 1
  end
end

Then('the reason my upload failed is:') do |table|
  expect(requirements.bulk_upload_failed_reason.text).to eq(table.raw.flatten.first)
end
