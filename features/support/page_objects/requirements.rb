# frozen_string_literal: true

class Requirements < SitePrism::Page
  element :initial_call_off_period_years, '#facilities_management_procurement_initial_call_off_period_years'
  element :initial_call_off_period_months, '#facilities_management_procurement_initial_call_off_period_months'

  section :initial_start_date, 'div.govuk-date-input' do
    element :day, 'input[name="facilities_management_procurement[initial_call_off_start_date_dd]"]'
    element :month, 'input[name="facilities_management_procurement[initial_call_off_start_date_mm]"]'
    element :year, 'input[name="facilities_management_procurement[initial_call_off_start_date_yyyy]"]'
  end

  section :mobilisation_radio, 'div:nth-child(4) > div > fieldset > div > div' do
    element :yes, '#facilities_management_procurement_mobilisation_period_required_true'
    element :period, '#facilities_management_procurement_mobilisation_period'
    element :no, '#facilities_management_procurement_mobilisation_period_required_false'
  end

  element :extension_required_yes, '#facilities_management_procurement_extensions_required_true'
  element :extension_required_no, '#facilities_management_procurement_extensions_required_false'

  section :optional_call_off_extensions, '#radio-inner-content-for-call-off-extensions' do
    section :'1', '#extension-0-container' do
      element :years, '#facilities_management_procurement_optional_call_off_extensions_attributes_0_years'
      element :months, '#facilities_management_procurement_optional_call_off_extensions_attributes_0_months'
      element :required,
              '#facilities_management_procurement_optional_call_off_extensions_attributes_0_extension_required'
      elements :error_messages, '.govuk-error-message'
    end

    section :'2', '#extension-1-container' do
      element :years, '#facilities_management_procurement_optional_call_off_extensions_attributes_1_years'
      element :months, '#facilities_management_procurement_optional_call_off_extensions_attributes_1_months'
      element :remove, '#extension-1-remove-button'
      elements :error_messages, '.govuk-error-message'
    end

    section :'3', '#extension-2-container' do
      element :years, '#facilities_management_procurement_optional_call_off_extensions_attributes_2_years'
      element :months, '#facilities_management_procurement_optional_call_off_extensions_attributes_2_months'
      element :remove, '#extension-2-remove-button'
      elements :error_messages, '.govuk-error-message'
    end

    section :'4', '#extension-3-container' do
      element :years, '#facilities_management_procurement_optional_call_off_extensions_attributes_3_years'
      element :months, '#facilities_management_procurement_optional_call_off_extensions_attributes_3_months'
      element :remove, '#extension-3-remove-button'
      elements :error_messages, '.govuk-error-message'
    end

    element :add_extension, '#add-contract-extension-button'
  end

  element :contract_name_status_tag, '#contract_name-tag > .govuk-tag'
  element :estimated_status_tag, '#estimated_annual_cost-tag > .govuk-tag'
  element :tupe_status_tag, '#tupe-tag > .govuk-tag'
  element :contract_period_status_tag, '#contract_period-tag > .govuk-tag'
  element :buildings_status_tag, '#buildings-tag > .govuk-tag'
  element :services_status_tag, '#services-tag  > .govuk-tag'
  element :assigned_status_tag, '#buildings_and_services-tag > .govuk-tag'
  element :requirements_status_tag, '#service_requirements-tag > .govuk-tag'

  element :service_summary, 'div#number-of-services'

  section :service_standard, 'fieldset.govuk-fieldset' do
    element :name, 'legend > span'
    element :name_two, 'legend > span > strong'
    element :value_a, 'input[value="A"]'
    element :value_b, 'input[value="B"]'
    element :value_c, 'input[value="C"]'
  end

  element :select_all, '#box-all'

  section :contract_period_summary, '#main-content > table' do
    element :optional_call_off_extension, '#call-off-extension > td'

    element :extension_1_length, '#call-off-extension-0 > td'
    element :extension_2_length, '#call-off-extension-1 > td'
    element :extension_3_length, '#call-off-extension-2 > td'
    element :extension_4_length, '#call-off-extension-3 > td'

    element :extension_1_period, '#call-off-extension-0-description > td:nth-child(2)'
    element :extension_2_period, '#call-off-extension-1-description > td:nth-child(2)'
    element :extension_3_period, '#call-off-extension-2-description > td:nth-child(2)'
    element :extension_4_period, '#call-off-extension-3-description > td:nth-child(2)'
  end

  section :contract_period, 'table' do
    element :length, '#contract-period > td'
    element :contract_description, '#contract-period-description > td:nth-child(2)'
    element :mobilisation_length, '#mobilisation-period > td:nth-child(2)'
    element :mobilisation_description, '#mobilisation-period-description > td:nth-child(2)'
    element :call_off_extension, '#call-off-extension > td'
    element :call_off_1_length, '#call-off-extension-1 > td:nth-child(2)'
    element :call_off_1_description, '#call-off-extension-1-description > td:nth-child(2)'
    element :call_off_2_length, '#call-off-extension-2 > td:nth-child(2)'
    element :call_off_2_description, '#call-off-extension-2-description > td:nth-child(2)'
    element :call_off_3_length, '#call-off-extension-3 > td:nth-child(2)'
    element :call_off_3_description, '#call-off-extension-3-description > td:nth-child(2)'
    element :call_off_4_length, '#call-off-extension-4 > td:nth-child(2)'
    element :call_off_4_description, '#call-off-extension-4-description > td:nth-child(2)'
  end
  element :answer_question, 'td > a'

  element :bulk_upload_status, 'div.ccs-font-weight-semi-bold.govuk-body > strong'

  section :estimated_cost, 'div.govuk-radios__item' do
    element :radio_yes, '#facilities_management_procurement_estimated_cost_known_true'
    element :radio_no, '#facilities_management_procurement_estimated_cost_known_false'
  end

  element :estimated_cost_input, '#facilities_management_procurement_estimated_annual_cost'

  element :service_summary_question, 'td > a', text: 'Answer questions'
  element :service_question, 'td > a', text: 'Answer question'

  element :checkbox_multiple_building, 'input[name="box-all"]'

  element :contract_name, 'input[name="facilities_management_procurement[contract_name]"]'

  elements :procurement_name, 'div > span'
end
