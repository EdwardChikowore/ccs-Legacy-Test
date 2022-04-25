class Common < SitePrism::Page
  set_url ''

  element :sign_in_button, '#submit'

  section :nav_menu, '#navigation' do
    element :sign_out_text, 'li:nth-child(2)'
    #navigation > li:nth-child(2) > a
  end

  element :header, 'h1'
  #choose_organistion_type > div > fieldset > legend > h1 

  element :header_two, 'h2'
  element :header_three, 'h3'

  element :rates_table, 'tr.govuk-table__row'

  elements :results_list, 'ul.ccs-results-list>li>h2>a'
  elements :results_list_mc, 'ul.ccs-results-list>li>div>div>h2>a'

  element :back_button, '#govuk-back-link ccs-no-print'
  #<a class="govuk-back-link ccs-no-print" aria-label="Back to the previous page" href="/legal-services">Back</a>

  element :button_text, 'Download the supplier list'

  element :error_title, 'govuk-error-summary__title' 
  element :error_message, 'govuk-list govuk-error-summary__list'

  element :services_selected, 'govuk-heading-m'

  element :supplier_details_page_title, 'div>span.govuk-caption-xl'

  element :agency_details_title, 'div.govuk-grid-row > div:nth-child(1) > p'

  element :agency_details_name, 'div.govuk-grid-row > div > div:nth-child(4) > div > h2 > a'

  element :multiple_agencies, 'div.govuk-grid-row > div > p > strong'
end