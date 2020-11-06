class Requirements < SitePrism::Page

  element :initial_call_off_period, '#facilities_management_procurement_initial_call_off_period'

  section :initial_start_date, 'div.govuk-date-input' do
    element :day, 'input[name="facilities_management_procurement[initial_call_off_start_date_dd]"]'
    element :month, 'input[name="facilities_management_procurement[initial_call_off_start_date_mm]"]'
    element :year, 'input[name="facilities_management_procurement[initial_call_off_start_date_yyyy]"]'
  end

  section :mobilisation_radio, 'div[data-propertyname="Mobilisation period choice"]' do
    element :yes, '#facilities_management_procurement_mobilisation_period_required_true'
    element :period, '#facilities_management_procurement_mobilisation_period'
    element :no, '#facilities_management_procurement_mobilisation_period_required_false'
  end

  section :procurement_extension_radio, 'div[data-propertyname="Extensions choice"]' do
    element :extension_1, 'input#facilities_management_procurement_optional_call_off_extensions_1'
    element :extension_2, 'input#facilities_management_procurement_optional_call_off_extensions_2'
    element :extension_3, 'input#facilities_management_procurement_optional_call_off_extensions_3'
    element :extension_4, 'input#facilities_management_procurement_optional_call_off_extensions_4'
    element :add_extension_period, '#fm-add-contract-ext-btn'
    element :yes, '#facilities_management_procurement_extensions_required_true'
    element :no, '#facilities_management_procurement_extensions_required_false'
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
    section :radio_content, 'div#radio-inner-content' do
      element :label, 'label'
      element :input, '#facilities_management_procurement_estimated_annual_cost'
    end
    element :radio_no, '#facilities_management_procurement_estimated_cost_known_false'
  end

  element :service_summary_question, 'td > a', text: 'Answer questions'
  element :service_question, 'td > a', text: 'Answer question'

  element :checkbox_multiple_building, 'input[name="box-all"]'

  element :contract_name, 'input[name="facilities_management_procurement[contract_name]"]'

  elements :procurement_name, 'div > span'


end

