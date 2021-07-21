module Pages
  class Account < SitePrism::Page
    element :your_account_title, 'div > span.govuk-caption-l'
    element :your_account_page, '#main-content > div.govuk-width-container'
  end
end
