# frozen_string_literal: true

class Dadraft < SitePrism::Page
  section :contract_details, '#contract-details-summary > table > tbody' do
    element :payment_method, 'tr:nth-child(2) > td > a'
    element :invoicing_contact_details, 'tr:nth-child(3) > td > a'
    element :authorised_representative_details, 'tr:nth-child(4) > td > a'
    element :notices_contact_details, 'tr:nth-child(5) > td > a'
    element :security_policy, 'tr:nth-child(6) > td > a'
    element :local_government_pension_scheme, 'tr:nth-child(7) > td > a'
    element :governing_law, 'tr:nth-child(8) > td > a'
  end

  element :buyer_authorised_details, '#facilities_management_procurement_using_buyer_detail_for_authorised_detail_true'
  element :buyer_notice_details, '#facilities_management_procurement_using_buyer_detail_for_notices_detail_true'
  element :security_notice_true, '#facilities_management_procurement_security_policy_document_required_true'
  element :security_notice_false, '#facilities_management_procurement_security_policy_document_required_false'
  element :security_policy_name, '#facilities_management_procurement_security_policy_document_name'
  element :security_policy_number, '#facilities_management_procurement_security_policy_document_version_number'
  element :security_policy_file, '#facilities_management_procurement_security_policy_document_file'
  element :pension_option_false, '#facilities_management_procurement_local_government_pension_scheme_false'

  element :english_law, '#facilities_management_procurement_governing_law_english'
  element :scottish_law, '#facilities_management_procurement_governing_law_scottish'
  element :ni_law, '#facilities_management_procurement_governing_law_northern_ireland'

  element :missing_regions, 'table > tbody'

  element :payment_method_bacs, '#facilities_management_procurement_payment_method_bacs'
  element :payment_method_card, '#facilities_management_procurement_payment_method_card'
  element :buyer_invoice_details, '#facilities_management_procurement_using_buyer_detail_for_invoice_details_true'

  elements :contract_details_text, 'tr > th'
  elements :contract_details_change_link, 'td > a'

  elements :contract_details_text, 'tr > th'
  element :invoiving_contact_details_error, 'div > ul > li'
  elements :contract_details_change_link, 'td > a'
  element :selected_address_container, '#full-address'
  element :enter_invoice_manually, '#add_new_invoice_contact_details_address_1'
  element :enter_authorised_manually, '#add_new_authorised_contact_details_address_1'
  element :enter_notices_manually, '#add_new_notices_contact_details_address_1'
  element :enter_address_manually, '#cant-find-address-link'

  elements :contract_details_value, '[data-module="govuk-details"]'
  element :contract_details_value_one, '[data-module="govuk-details"]'
  elements :review_contract_value, 'summary.govuk-details__summary'
  elements :review_contract_value_two, 'tbody > tr > td:nth-child(2)'
  element :invoicing_contact_details,
          '[for="facilities_management_procurement_using_buyer_detail_for_invoice_details_false"]'
  element :authorised_contact_details,
          '[for="facilities_management_procurement_using_buyer_detail_for_authorised_detail_false"]'
  element :notices_contact_details,
          '[for="facilities_management_procurement_using_buyer_detail_for_notices_detail_false"]'

  elements :review_contract_expand, '[data-module="govuk-details"] > div'

  element :change_address, '#change-input-2'

  element :government_procurement_card, '#facilities_management_procurement_payment_method_card'
  elements :contract_document_link, 'main ul > li > a'

  element :lowest_supplier_name, 'blockquote > span:nth-child(1)'
  element :lowest_supplier_price, 'blockquote > span:nth-child(2)'

  sections :subsequent_supplier, 'tbody >tr' do
    elements :details, 'td'
  end

  element :fc_header, 'h5'
end
