# frozen_string_literal: true

class Results < SitePrism::Page
  element :estimated_cost_option, '[value="1a"]'

  section :results_page, '#main-content' do
    elements :heading, 'h1'
    elements :estimated_cost, 'h3:nth-child(6) > span'
  end

  section :market_route, 'div.govuk-radios' do
    elements :radio_items, 'div.govuk-radios__item'
    element :direct_award, '#facilities_management_procurement_route_to_market_da_draft'
    element :further_competition, '#facilities_management_procurement_route_to_market_further_competition'
  end

  element :available_route_to_market, 'div.govuk-\!-margin-bottom-3 > h5'

  elements :choose_contract_value, 'div.govuk-body'

  section :choose_contract, '[data-module="govuk-details"]' do
    element :summary_text, 'summary > span.govuk-details__summary-text'
    element :unpriced_service, 'div >ul>li'
  end

  elements :choose_contract_value_options, 'input[type="radio"]'
end
