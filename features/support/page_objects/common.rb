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

  element :rates_table, 'tr>th'

  elements :results_list, 'ul.ccs-results-list>li>h2>a'

  #element :radio_button_yes, 'central_government_yes'
  #element :radio_button_no,  '[value="no"]'

  element :back_button, '#govuk-back-link ccs-no-print'
  #<a class="govuk-back-link ccs-no-print" aria-label="Back to the previous page" href="/legal-services">Back</a>

  element :button_text, 'Download the supplier list'

  element :error_title, 'govuk-error-summary__title' 
  element :error_message, 'govuk-list govuk-error-summary__list'

  element :services_selected, 'govuk-heading-m'

  element :supplier_details_page_title, 'div>span.govuk-caption-xl'

end