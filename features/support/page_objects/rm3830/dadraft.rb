module Pages::RM3830
  class Dadraft < SitePrism::Page
    element :lowest_supplier_name, 'blockquote > span:nth-child(1)'
    element :lowest_supplier_price, 'blockquote > span:nth-child(2)'

    sections :subsequent_supplier, 'dl.govuk-summary-list .govuk-summary-list__row' do
      element :supplier_name, 'dt'
      element :contract_value, 'dd'
    end

    section :contract_details, '#contract-details-summary > table > tbody' do
      section :'Payment method', 'tr:nth-child(2)' do
        element :question, 'a'
        element :answer, 'td:nth-child(2)'
      end

      section :'Invoicing contact details', 'tr:nth-child(3)' do
        element :question, 'a'
        element :name, '#invoice-detail-summary > details > summary'
        element :contact_detail, '#invoice-detail-summary > details > div'
      end

      section :'Authorised representative details', 'tr:nth-child(4)' do
        element :question, 'a'
        element :name, '#authorised-detail-summary > details > summary'
        element :contact_detail, '#authorised-detail-summary > details > div'
      end

      section :'Notices contact details', 'tr:nth-child(5)' do
        element :question, 'a'
        element :name, '#notice-detail-summary > details > summary'
        element :contact_detail, '#notice-detail-summary > details > div'
      end

      section :'Security policy', 'tr:nth-child(6)' do
        element :question, 'a:not([download])'
      end

      section :'Local Government Pension Scheme', 'tr:nth-child(7)' do
        element :question, 'a:not(.govuk-link--no-visited-state)'
      end

      section :'Governing law', 'tr:nth-child(8)' do
        element :question, 'a'
      end
    end

    section :enter_new_contact_detail, 'main' do
      element :'Enter a new invoicing contact',
              '#facilities_management_rm3830_procurement_using_buyer_detail_for_invoice_details_false'
      element :'Enter a new authorised representative',
              '#facilities_management_rm3830_procurement_using_buyer_detail_for_authorised_detail_false'
      element :'Enter a new contact for notices',
              '#facilities_management_rm3830_procurement_using_buyer_detail_for_notices_detail_false'
    end

    section :contact_detail, 'form' do
      element :name, 'fieldset > div > div:nth-child(2) > label'
      element :address, 'fieldset > div > div:nth-child(2) > label > span'
    end

    element :buyer_details, '.govuk-radios__input', match: :first

    element :change_address, '#change-input-2'
    element :selected_address_container, '#full-address'

    elements :contract_document_link, 'main ul > li > a'
    element :missing_regions, 'table > tbody'
  end
end
