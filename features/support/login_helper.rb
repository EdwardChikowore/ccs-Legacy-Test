# frozen_string_literal: true

def sign_in
  fill_in 'email', with: ENV['ACCOUNT_USERNAME']
  fill_in 'password', with: ENV['ACCOUNT_PASSWORD']

end

