  def sign_in
    fill_in 'email', with: ENV['ACCOUNT_USERNAME']
    fill_in 'password', with: ENV['ACCOUNT_PASSWORD']
    click_on "Sign in"
  end

  def sign_in_building
    fill_in 'email', with: BUYER_DETAIL['building_login']['email']
    fill_in 'password', with: BUYER_DETAIL['building_login']['password']
    click_on "Sign in"
  end
