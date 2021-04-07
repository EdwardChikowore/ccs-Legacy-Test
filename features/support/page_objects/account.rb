# frozen_string_literal: true

class Account < SitePrism::Page
  element :your_account_title, 'div > span.govuk-caption-l'
  element :your_account_page, '#main-content > div.govuk-width-container'
  elements :account_links, '.govuk-grid-row > div > a'
  elements :account_panels, '.fm-buyer-account-panel > p > a'
end
