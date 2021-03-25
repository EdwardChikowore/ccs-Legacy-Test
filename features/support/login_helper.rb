# frozen_string_literal: true

def sign_in
  fill_in 'email', with: ENV['ACCOUNT_USERNAME']
  fill_in 'password', with: ENV['ACCOUNT_PASSWORD']
  click_on 'Sign in'
end

def sign_in_building
  fill_in 'email', with: ENV['BUYER_USERNAME']
  fill_in 'password', with: ENV['BUYER_PASSWORD']
  click_on 'Sign in'
end
