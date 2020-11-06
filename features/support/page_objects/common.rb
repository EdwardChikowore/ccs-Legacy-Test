class Common < SitePrism::Page
  set_url ''

  element :header_one, 'h1'
  element :header_two, 'h2'
  element :header_three, 'legend'
  element :open_all, 'button.govuk-accordion__open-all' , text: 'Open all'

  section :banner, 'ul#navigation' do
    element :login_banner, 'li:nth-child(1)'
    element :signout_banner, 'li:nth-child(2)'
  end

  element :answer_question, 'td > a'

  element :fc_header, 'h5'

  element :save_and_continue, '[name="commit"]'

  element :error_list, '.govuk-error-summary__list'
end