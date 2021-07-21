module Pages::RM3830
  class Requirements < SitePrism::Page
    element :contract_name, 'input[name="facilities_management_rm3830_procurement[contract_name]"]'
    elements :procurement_name, 'div > span'

    section 'Contract details', 'form > table:nth-of-type(1)' do
      section 'Contract name', 'tr:nth-of-type(1)' do
        element :status, 'td:nth-of-type(2)'
      end

      section 'Estimated annual cost', 'tr:nth-of-type(2)' do
        element :status, 'td:nth-of-type(2)'
      end

      section 'TUPE', 'tr:nth-of-type(3)' do
        element :status, 'td:nth-of-type(2)'
      end

      section 'Contract period', 'tr:nth-of-type(4)' do
        element :status, 'td:nth-of-type(2)'
      end
    end

    section 'Services and buildings', 'form > table:nth-of-type(2)' do
      section 'Services', 'tr:nth-of-type(1)' do
        element :status, 'td:nth-of-type(2)'
      end

      section 'Buildings', 'tr:nth-of-type(2)' do
        element :status, 'td:nth-of-type(2)'
      end

      section 'Assigning services to buildings', 'tr:nth-of-type(3)' do
        element :status, 'td:nth-of-type(2)'
      end

      section 'Service requirements', 'tr:nth-of-type(4)' do
        element :status, 'td:nth-of-type(2)'
      end
    end

    element :estimated_cost_known_yes, '#facilities_management_rm3830_procurement_estimated_cost_known_true'
    element :estimated_cost_known_no, '#facilities_management_rm3830_procurement_estimated_cost_known_false'
    element :estimated_cost_known, '#facilities_management_rm3830_procurement_estimated_annual_cost'

    element :tupe_yes, '#facilities_management_rm3830_procurement_tupe_true'
    element :tupe_no, '#facilities_management_rm3830_procurement_tupe_false'

    element :initial_call_off_period_years, '#facilities_management_rm3830_procurement_initial_call_off_period_years'
    element :initial_call_off_period_months, '#facilities_management_rm3830_procurement_initial_call_off_period_months'
    element :initial_call_off_period_day, '#facilities_management_rm3830_procurement_initial_call_off_start_date_dd'
    element :initial_call_off_period_month, '#facilities_management_rm3830_procurement_initial_call_off_start_date_mm'
    element :initial_call_off_period_year, '#facilities_management_rm3830_procurement_initial_call_off_start_date_yyyy'

    element :mobilisation_period_yes, '#facilities_management_rm3830_procurement_mobilisation_period_required_true'
    element :mobilisation_period_no, '#facilities_management_rm3830_procurement_mobilisation_period_required_false'
    element :mobilisation_period, '#facilities_management_rm3830_procurement_mobilisation_period'

    element :extension_required_yes, '#facilities_management_rm3830_procurement_extensions_required_true'
    element :extension_required_no, '#facilities_management_rm3830_procurement_extensions_required_false'

    section :call_off_extensions, '#radio-inner-content-for-call-off-extensions' do
      section :'1', '#extension-0-container' do
        element :years, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_0_years'
        element :months, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_0_months'
      end

      section :'2', '#extension-1-container' do
        element :years, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_1_years'
        element :months, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_1_months'
      end

      section :'3', '#extension-2-container' do
        element :years, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_2_years'
        element :months, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_2_months'
      end

      section :'4', '#extension-3-container' do
        element :years, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_3_years'
        element :months, '#facilities_management_rm3830_procurement_call_off_extensions_attributes_3_months'
      end

      element :add_extension, '#add-contract-extension-button'
    end

    section :contract_period_summary, '#main-content > table' do
      element :initial_call_off_period_length, '#contract-period > td'
      element :initial_call_off_period, '#contract-period-description > td:nth-child(2)'

      element :mobilisation_period_length, 'tbody > tr:nth-child(3) > td'
      element :mobilisation_period, '#mobilisation-period-description > td:nth-child(2)'

      element :call_off_extension, '#call-off-extension > td'

      element :extension_1_length, '#call-off-extension-0 > td'
      element :extension_2_length, '#call-off-extension-1 > td'
      element :extension_3_length, '#call-off-extension-2 > td'
      element :extension_4_length, '#call-off-extension-3 > td'

      element :extension_1_period, '#call-off-extension-0-description > td:nth-child(2)'
      element :extension_2_period, '#call-off-extension-1-description > td:nth-child(2)'
      element :extension_3_period, '#call-off-extension-2-description > td:nth-child(2)'
      element :extension_4_period, '#call-off-extension-3-description > td:nth-child(2)'
    end

    element :select_all, '#box-all'
    element :checkbox_multiple_building, 'input[name="box-all"]'

    element :service_question, 'td > a', text: 'Answer question'

    section :service_standard, 'fieldset.govuk-fieldset' do
      element :A, 'input[value="A"]'
      element :B, 'input[value="B"]'
      element :C, 'input[value="C"]'
    end

    element :service_summary, 'div#number-of-services'

    element :volume_input, 'input[type="text"]'

    element :bulk_upload_status, 'div.ccs-font-weight-semi-bold.govuk-body > strong'
    element :bulk_upload_failed_reason, 'div:nth-child(5) > div:nth-child(2)'
  end
end
