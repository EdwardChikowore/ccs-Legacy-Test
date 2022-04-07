module Pages
  class Common < SitePrism::Page
    element :header_one, 'h1'
    element :header_two, 'h2'
    element :header_three, 'legend'

    element :show_all, 'button .govuk-accordion__show-all-text'

    section :banner, 'ul#navigation' do
      element :login_banner, 'li:nth-child(1)'
      element :signout_banner, 'li:nth-child(1)'
    end

    element :answer_question, 'td > a'

    element :address_drop_down, '#address-results-container'
  end
end
