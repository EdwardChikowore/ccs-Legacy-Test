class Common < SitePrism::Page
  set_url ''

  element :body, 'govuk-body'

  section :banner, 'ul#navigation' do
    element :login_banner, 'li:nth-child(1)'
    element :signout_banner, 'li:nth-child(2)'
  end
  element :sign_out, '[data-method="delete"]'
  element :start_procurement, 'div.fm-buyer-account-panel' , text: 'Start a new procurement'

  element :header, 'h2'
  element :header_one, 'h1'
  element :header_three, 'legend'
  elements :header_multiple, 'h2'
  element :fc_header, 'h5'
  elements :multiple_heading, 'h1'
  element :ms_c1, 'label', text: 'Mechanical and electrical engineering'
  elements :sign_out_check, 'li > a'
  element :my_account_title, 'div > span.govuk-caption-l'

  section :service_accordion, 'div#procurement-services-accordion' do
    section :section_heading, '[data-sectionname="Maintenance services"]' do
      element :section_button, '.govuk-accordion__section-heading > button'
      section :section_content, 'div.govuk-accordion__section-content' do
        sections :chooser_input, '[sectionname="Maintenance services"]' do
          element :chooser_button, '.govuk-fieldset'
          element :chooser_checkbox, 'div.govuk-checkboxes__item > input'
        end
      end
    end
  end

  section :maintenance, '[data-sectionname="Maintenance services"]' do
    element :select_all, '#C_all'
  end

  section :horticultural, '[data-sectionname="Horticultural services"]' do
    element :select_all, '#D_all'
  end

  section :statutory, '[data-sectionname="Statutory obligations"]' do
    element :select_all, '#E_all'
  end

  section :catering, '[data-sectionname="Catering services"]' do
    element :select_all, '#F_all'
  end

  section :cleaning, '[data-sectionname="Cleaning services"]' do
    element :select_all, '#G_all'
  end

  section :workplace, '[data-sectionname="Workplace FM services"]' do
    element :select_all, '#H_all'
  end

  section :reception, '[data-sectionname="Reception services"]' do
    element :select_all, '#I_all'
  end

  section :security, '[data-sectionname="Security services"]' do
    element :select_all, '#J_all'
  end

  section :waste, '[data-sectionname="Waste services"]' do
    element :select_all, '#K_all'
  end

  section :miscellaneous, '[data-sectionname="Miscellaneous FM services"]' do
    element :select_all, '#L_all'
  end

  section :cafm, '[data-sectionname="Computer-aided facilities management (CAFM)"]' do
    element :select_all, '#service_M-1'
  end

  section :helpdesk, '[data-sectionname="Helpdesk services"]' do
    element :select_all, '#service_N-1'
  end

  section :management_billable, '[data-sectionname="Management of billable works"]' do
    element :select_all, '#service_O-1'
  end


  element :maintenance_select_all, '#C_all'
  element :horticultural_select_all, '#D_all'
  element :statutory_select_all, '#E_all'
  element :catering_select_all, '#F_all'
  element :cleaning_select_all, '#G_all'
  element :workplace_select_all, '#H_all'
  element :reception_select_all, '#I_all'
  element :security_select_all, '#J_all'
  element :waste_select_all, '#K_all'
  element :miscellaneous_select_all, '#L_all'
  element :cafm_select_all, '#service_M-1'
  element :helpdesk_select_all, '#service_N-1'
  element :management_select_all, '#service_O-1'



  element :open_all, 'button.govuk-accordion__open-all'

  element :expanded_true, '[aria-expanded="true"]'
  element :expanded_false, '[aria-expanded="false"]'

  section :service_basket, 'div.basket' do
    element :service_selected, 'h3 > span:nth-child(2)'
    element :remove_all, 'a', text: 'Remove all'
    element :remove_link, 'li#service_C-1_basket > div > span'
    element :selected_service, 'ul.govuk-list > li'
    element :selected_service_msg, 'ul.govuk-list > li > div:nth-child(2)'
  end


  section :region_accordion, 'div#procurement-region-accordion' do
    element :section_heading, '[data-sectionname="North East (England)"]'
    element :section_button, '.govuk-accordion__section-heading > button'
  end

  section :region_accordion_content, 'div#procurement-region-accordion-content-1' do
    section :checkbox, 'div.govuk-checkboxes' do
      elements :item, 'div.govuk-checkboxes__item'
      elements :input, 'div.govuk-checkboxes__item > input'
    end
  end



  element :region_list, 'div.govuk-checkboxes'

  section :region_basket, 'div.basket' do
    section :region_div, 'div' do
      element :none_selected, 'h3'
      element :service_selected, 'h3 > span:nth-of-type(1)'
      element :remove_all, 'a', text: 'Remove all'
      elements :selected_region, 'ul.govuk-list > li'
      elements :selected_region_msg, 'ul.govuk-list > li > div:nth-child(2)'
    end
  end


  element :north_east_select_all, '#region_UKC_all'
  element :north_west_select_all, '#region_UKD_all'
  element :yorkshire_humber_select_all, '#region_UKE_all'
  element :east_midlands_select_all, '#region_UKF_all'
  element :west_midlands_select_all, '#region_UKG_all'
  element :east_england_select_all, '#region_UKH_all'
  element :london_select_all, '#region_UKI_all'
  element :south_east_select_all, '#region_UKJ_all'
  element :south_west_select_all, '#region_UKK_all'
  element :wales_select_all, '#region_UKL_all'
  element :scotland_select_all, '#region_UKM_all'
  element :northern_ireland_select_all, '#region_UKN_all'


  section :north_east_section, '[data-sectionname="North East (England)"]' do
    element :expanded, '[aria-expanded]'
  end

  section :north_west_section, '[data-sectionname="North West (England)"]' do
    element :expanded, '[aria-expanded]'
  end

  section :yorkshire_humber_section, '[data-sectionname="Yorkshire and The Humber"]' do
    element :expanded, '[aria-expanded]'
  end

  section :east_midlands_section, '[data-sectionname="East Midlands (England)"]' do
    element :expanded, '[aria-expanded]'
  end


  section :filter_panel, 'div.filter-component-container' do
    element :filter_heading, 'div.govuk-heading-m govuk-!-margin-left-1'
    section :service, 'div[data-section="service"]' do
      elements :filter_container, 'div[data-section="service"] > div > div'
      element :summary, 'summary.govuk-details__summary'
      elements :list, 'div.govuk-details__text  > ul > li'
      element :details_open, 'summary[aria-expanded="true"]'
      element :details_close, 'summary[aria-expanded="false"]'

    end
  end

  sections :summary, 'summary.govuk-details__summary' do
    element :details_open, 'summary[aria-expanded="true"]'
    element :details_close, '[aria-expanded="false"]'
  end

  element :contract_name, 'input[name="facilities_management_procurement[contract_name]"]'

  sections :summary_question_section, 'tbody.govuk-table__body > tr' do
    element :question_link, 'td.govuk-table__cell > a'
  end



  section :estimated_cost, 'div.govuk-radios__item' do
    element :radio_yes, '#facilities_management_procurement_estimated_cost_known_true'
    section :radio_content, 'div#radio-inner-content' do
      element :label, 'label'
      element :input, '#facilities_management_procurement_estimated_annual_cost'
    end
    element :radio_no, '#facilities_management_procurement_estimated_cost_known_false'
  end

  element :tupe_yes, '#facilities_management_procurement_tupe_true'
  element :tupe_no, '#facilities_management_procurement_tupe_false'

  element :initial_call_off_period, '#facilities_management_procurement_initial_call_off_period'

  section :initial_start_date, 'div.govuk-date-input' do
    element :day, 'input[name="facilities_management_procurement[initial_call_off_start_date_dd]"]'
    element :month, 'input[name="facilities_management_procurement[initial_call_off_start_date_mm]"]'
    element :year, 'input[name="facilities_management_procurement[initial_call_off_start_date_yyyy]"]'
  end

  element  :mobilisation, 'div[data-propertyname="Mobilisation period choice"]'

  section :mobilisation_radio, 'div[data-propertyname="Mobilisation period choice"]' do
    element :yes, '#facilities_management_procurement_mobilisation_period_required_true'
    element :period, '#facilities_management_procurement_mobilisation_period'
    element :no, '#facilities_management_procurement_mobilisation_period_required_false'
  end



  section :procurement_extension_radio, 'div[data-propertyname="Extensions choice"]' do
    element :extension_one, 'input#facilities_management_procurement_optional_call_off_extensions_1'
    element :extension_two, 'input#facilities_management_procurement_optional_call_off_extensions_2'
    element :add_extension_period, '#fm-add-contract-ext-btn'
    element :yes, '#facilities_management_procurement_extensions_required_true'
    element :no, '#facilities_management_procurement_extensions_required_false'
  end

  section :building, 'div.govuk-checkboxes__item' do
    element :item, 'input.govuk-checkboxes__input'
    element :building_one_address, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_active"] > span'
    element :building_two_address, 'label[for="facilities_management_procurement_procurement_buildings_attributes_2_active"] > span'
  end

  section :building_one, 'label[for="facilities_management_procurement_procurement_buildings_attributes_0_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end
  section :building_two, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_three, 'label[for="facilities_management_procurement_procurement_buildings_attributes_2_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_four, 'label[for="facilities_management_procurement_procurement_buildings_attributes_3_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_five, 'label[for="facilities_management_procurement_procurement_buildings_attributes_4_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_six, 'label[for="facilities_management_procurement_procurement_buildings_attributes_5_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_seven, 'label[for="facilities_management_procurement_procurement_buildings_attributes_6_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_eight, 'label[for="facilities_management_procurement_procurement_buildings_attributes_7_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_nine, 'label[for="facilities_management_procurement_procurement_buildings_attributes_8_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_ten, 'label[for="facilities_management_procurement_procurement_buildings_attributes_9_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end
  section :building_eleven, 'label[for="facilities_management_procurement_procurement_buildings_attributes_10_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_twelve, 'label[for="facilities_management_procurement_procurement_buildings_attributes_11_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_thirteen, 'label[for="facilities_management_procurement_procurement_buildings_attributes_12_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_fourteen, 'label[for="facilities_management_procurement_procurement_buildings_attributes_13_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_fifteen, 'label[for="facilities_management_procurement_procurement_buildings_attributes_14_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end



  section :first_building_service, 'div.govuk-checkboxes__item' do
    element :building_management, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_service_codes_c11"]'
    element :environmental_cleaning, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_service_codes_c3"]'
    element :fire_detection, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_service_codes_c4"]'
    element :high_voltage, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_service_codes_c13"]'
    element :internal_and_external, 'label[facilities_management_procurement_procurement_buildings_attributes_1_service_codes_c7]'
  end



  # div#section [value="C.11"]

  #section zero = div#section[value="Swansea"]
  # section one = div#section [value="Outer Belfast"]
  # section two = div#section [value="Wolverhampton"]

  # section seven =div#section [value="Westminster Building"]
  # section ten = div#section [value="Belfast Building"]
  # section eleven = div#section [value="Birmingham"]
  # section thirteen = div#section [value="Coventry House"]
  # section twelve = div#section [value="Luton Building"]
  # section fourteen = div#section [value="Manchester Building"]
  # #section s = div#section[value="Swansea"]



  # section zero = div#section [value="Outer Belfast"]
  # section one = div#section [value="Wolverhampton"]
  # section two = div#section [value="Aberdeen"]
  # section three  =div#section [value="Westminster Building"]
  # section four = div#section [value="Belfast Building"]
  # section five = div#section [value="Birmingham"
  # section six = div#section [value="Luton Building"]
  # section seven = div#section[value="Swansea"]
  # section thirteen = div#section [value="Coventry House"]
  # section fourteen = div#section [value="Manchester Building"]


  section :service_selection, 'div#section' do
    elements :bms, '[value="C.11"]'
    elements :env_cleaning, '[value="C.3"]'
    elements :fire_detection_maintenance, '[value="C.4"]'
    elements :high_voltage, '[value="C.13"]'
    elements :internal_external_building, '[value="C.7"]'
    elements :lifts_hoists, '[value="C.5"]'
    elements :mech_elec, '[value="C.1"]'
    elements :security_access, '[value="C.6"]'
    elements :standby_power, '[value="C.12"]'
    elements :ventilation, '[value="C.2"]'
    elements :asbestos, '[value="E.1"]'
    elements :compliance_plans, '[value="E.5"]'
    elements :condition_survey, '[value="E.6"]'
    elements :electrical_testing, '[value="E.7"]'
    elements :fire_risk, '[value="E.8"]'
    elements :portable_appliance, '[value="E.4"]'
    elements :statutory_inspections, '[value="E.3"]'
    elements :water_hygiene, '[value="E.2"]'
    elements :cleaning_external, '[value="G.5"]'
    elements :cleaning_integral, '[value="G.2"]'
    elements :deep_periodic_clean, '[value="G.4"]'
    elements :mobile_cleaning, '[value="G.3"]'
    elements :pest_control, '[value="G.15"]'
    elements :routine_cleaning, '[value="G.1"]'
    elements :external_window_cleaning, '[value="G.7"]'
    elements :internal_window_cleaning, '[value="G.6"]'
    elements :handyman_services, '[value="H.4"]'
    elements :move_space_manage, '[value="H.5"]'
    elements :car_park, '[value="I.3"]'
    elements :reception_services, '[value="I.1"]'
    elements :taxi_booking, '[value="I.2"]'
    elements :voice_announce, '[value="I.4"]'
    elements :cctv, '[value="J.2"]'
    elements :control_access, '[value="J.3"]'
    elements :emergency_response, '[value="J.4"]'
    elements :managements_visitor, '[value="J.6"]'
    elements :manned_guarding, '[value="J.1"]'
    elements :patrols_fixed, '[value="J.5"]'
    elements :classified_waste, '[value="K.1"]'
    elements :feminine_hygiene, '[value="K.7"]'
    elements :general_waste, '[value="K.2"]'
    elements :recycled_waste, '[value="K.3"]'
    elements :cafm, '[value="M.1"]'
    elements :helpdesk, '[value="N.1"]'
    elements :management_billable, '[value="O.1"]'
  end


  section :building_service, 'div.govuk-form-group' do
    element :checkbox, 'input[name="box-all"]'
  end




    element :checkbox_multiple_building, 'input[name="box-all"]'


  section :your_buildings, 'div#root' do
    elements :choose_building_service, 'ul > li'
    elements :building_name, 'ul > li > a'
  end

  elements :choose_building_service, 'div#root ul > li'
  elements :building_name, 'div#root ul > li > a'


  sections :choose_service, 'fieldset.govuk-fieldset > div >ul > li' do
    section :checkbox_items, 'div.govuk-checkboxes__item' do
    element :input, 'input'
    element :label, 'label'
    element :choose_service_mech, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_service_codes_c1"]'
    element :choose_service_vent, 'label[for="facilities_management_procurement_procurement_buildings_attributes_1_service_codes_c2"]'
    end
  end

  elements :detailed_building_link, 'td.govuk-table__cell > a'

  elements :gia_value, 'tr.govuk-table__row > td'
  element :back_detailed_search, 'a.govuk-link--no-visited-state'


  element :lift_one, '#liftdata_1'
  element :lift_two, '#newlift_2'
  element :lift_three, '#newlift_3'
  element :lift_four, '#newlift_4'
  element :lift_five, '#newlift_5'
  element :add_lift_button_one, '[value="Add new lift (98 remaining)"]'
  element :add_lift_button_two, '[value="Add new lift (97 remaining)"]'
  element :add_lift_button_three, '[value="Add new lift (96 remaining)"]'
  element :add_lift_button_four, '[value="Add new lift (95 remaining)"]'
  element :add_lift_button_five, '[value="Add new lift (94 remaining)"]'
  element :add_lift_button_six, '[value="Add new lift (94 remaining)"]'



  section :service_standard, 'fieldset.govuk-fieldset' do
    element :name, 'legend > span'
    element :name_two, 'legend > span > strong'
    element :value_a, 'input[value="A"]'
    element :value_b, 'input[value="B"]'
    element :value_c, 'input[value="C"]'
  end


  section :service_info_volume, '.govuk-summary-list ' do
    element :routine_cleaning, '#facilities_management_procurement_building_procurement_building_services_attributes_2_no_of_building_occupants'
    element :routine_cleaning_two, '#facilities_management_procurement_building_procurement_building_services_attributes_3_no_of_building_occupants'
    element :routine_cleaning_three, '#facilities_management_procurement_building_procurement_building_services_attributes_1_no_of_building_occupants'
    element :routine_cleaning_four, '#facilities_management_procurement_building_procurement_building_services_attributes_0_no_of_building_occupants'
    element :routine_cleaning_five, '#facilities_management_procurement_building_procurement_building_services_attributes_4_no_of_building_occupants'
    element :mobile_cleaning, '#facilities_management_procurement_building_procurement_building_services_attributes_4_no_of_building_occupants'
    element :general_waste, '#facilities_management_procurement_building_procurement_building_services_attributes_4_tones_to_be_collected_and_removed'
    element :general_waste_two, '#facilities_management_procurement_building_procurement_building_services_attributes_5_tones_to_be_collected_and_removed'
    element :general_waste_three, '#facilities_management_procurement_building_procurement_building_services_attributes_3_tones_to_be_collected_and_removed'
    element :general_waste_five, '#facilities_management_procurement_building_procurement_building_services_attributes_6_tones_to_be_collected_and_removed'
    element :recycled_waste, '#facilities_management_procurement_building_procurement_building_services_attributes_6_tones_to_be_collected_and_removed'
    element :recycled_waste_two, '#facilities_management_procurement_building_procurement_building_services_attributes_3_tones_to_be_collected_and_removed'
    element :recycled_waste_three, '#facilities_management_procurement_building_procurement_building_services_attributes_7_tones_to_be_collected_and_removed'
    element :portable_appliance, '#facilities_management_procurement_building_procurement_building_services_attributes_2_no_of_appliances_for_testing'
    element :portable_appliance_two, '#facilities_management_procurement_building_procurement_building_services_attributes_5_no_of_appliances_for_testing'
    element :mobile_cleaning_two, '#facilities_management_procurement_building_procurement_building_services_attributes_3_no_of_building_occupants'
    element :cleaning_external_area, '#facilities_management_procurement_building_procurement_building_services_attributes_8_size_of_external_area'
    element :mobile_cleaning_three, '#facilities_management_procurement_building_procurement_building_services_attributes_11_no_of_building_occupants'
    element :classified_waste, '#facilities_management_procurement_building_procurement_building_services_attributes_0_no_of_consoles_to_be_serviced'
    element :feminine_hygiene, '#facilities_management_procurement_building_procurement_building_services_attributes_1_no_of_units_to_be_serviced'
    element :general_waste_four, '#facilities_management_procurement_building_procurement_building_services_attributes_2_tones_to_be_collected_and_removed'
  end



  section :service_hours, 'div.servicehoursdata' do
    elements :all_day, '[value="all_day"]'
    elements :not_required, '[value="not_required"]'
    elements :hourly, '[value="hourly"]'
    element :monday_start_hour, '#facilities_management_procurement_building_service_service_hours_monday_start_hour > option'
    element :monday_start_minute, '#facilities_management_procurement_building_service_service_hours_monday_start_minute > option'
    element :monday_start_ampm,'#facilities_management_procurement_building_service_service_hours_monday_start_ampm > option'
    element :monday_end_hour, '#facilities_management_procurement_building_service_service_hours_monday_end_hour > option'
    element :monday_end_minute,'#facilities_management_procurement_building_service_service_hours_monday_end_minute > option'
    element :monday_end_ampm, '#facilities_management_procurement_building_service_service_hours_monday_end_ampm'
    element :monday_next_day, '#facilities_management_procurement_building_service_service_hours_monday_next_day'
    element :saturday_start_hour, '#facilities_management_procurement_building_service_service_hours_saturday_start_hour > option'
    element :saturday_start_minute, '#facilities_management_procurement_building_service_service_hours_saturday_start_minute > option'
    element :saturday_start_ampm,'#facilities_management_procurement_building_service_service_hours_saturday_start_ampm > option'
    element :saturday_end_hour, '#facilities_management_procurement_building_service_service_hours_saturday_end_hour > option'
    element :saturday_end_minute,'#facilities_management_procurement_building_service_service_hours_saturday_end_minute > option'
    element :saturday_end_ampm, '#facilities_management_procurement_building_service_service_hours_saturday_end_ampm'
    element :saturday_next_day, '#facilities_management_procurement_building_service_service_hours_saturday_next_day'
    element :sunday_start_hour, '#facilities_management_procurement_building_service_service_hours_sunday_start_hour > option'
    element :sunday_start_minute, '#facilities_management_procurement_building_service_service_hours_sunday_start_minute > option'
    element :sunday_start_ampm,'#facilities_management_procurement_building_service_service_hours_sunday_start_ampm > option'
    element :sunday_end_hour, '#facilities_management_procurement_building_service_service_hours_sunday_end_hour > option'
    element :sunday_end_minute,'#facilities_management_procurement_building_service_service_hours_sunday_end_minute > option'
    element :sunday_end_ampm, '#facilities_management_procurement_building_service_service_hours_sunday_end_ampm'
    element :sunday_next_day, '#facilities_management_procurement_building_service_service_hours_sunday_next_day'
    element :sunday_not_required, '#sunday_not_required'
    element :sunday_all_day, '#sunday_all_day'
    element :sunday_hourly, '#sunday_hourly'
    element :saturday_not_required, '#saturday_not_required'
    element :saturday_all_day, '#saturday_all_day'
    element :saturday_hourly, '#saturday_hourly'
    element :copy_details, '#copy_details'
  end

  elements :choose_contract_value, 'div.govuk-body'

  section :choose_contract, '[data-module="govuk-details"]' do
    element :summary_text, 'summary > span.govuk-details__summary-text'
    element :unpriced_service, 'div >ul>li'
  end

  section :choose_contract_radio, '.govuk-radios__item' do
    element :lot_one_a, '#facilities_management_procurement_lot_number_1a'
    element :lot_one_b, '#facilities_management_procurement_lot_number_1b'
    element :lot_one_c, '#facilities_management_procurement_lot_number_1c'
  end





  section :results_page, 'main#main-content' do
    elements :heading, 'h1'
    elements :estimated_cost, 'h2 > span'
  end

  section :market_route, 'div.govuk-radios' do
    elements :radio_items, 'div.govuk-radios__item'
    element :direct_award, '#facilities_management_procurement_route_to_market_da_draft'
    element :further_competition, '#facilities_management_procurement_route_to_market_further_competition'
  end


  section :procure_page, 'div.govuk-body' do
    element :header, 'h1'
  end

  element :lowest_supplier_name, 'blockquote > span:nth-child(1)'
  element :lowest_supplier_price, 'blockquote > span:nth-child(2)'

  sections :subsequent_supplier, 'tbody >tr' do
    elements :details, 'td'
  end

    element :service_summary_question, 'td > a', text: 'Answer questions'
    element :service_question, 'td > a', text: 'Answer question'


  element :payment_method_bacs, '#facilities_management_procurement_payment_method_bacs'
  element :payment_method_card, '#facilities_management_procurement_payment_method_card'
  element :buyer_invoice_details, '#facilities_management_procurement_using_buyer_detail_for_invoice_details_true'
  element :enter_invoice_details, '#facilities_management_procurement_using_buyer_detail_for_invoice_details_false'
  element :buyer_authorised_details, '#facilities_management_procurement_using_buyer_detail_for_authorised_detail_true'
  element :buyer_notice_details, '#facilities_management_procurement_using_buyer_detail_for_notices_detail_true'
  element :security_notice_true, '#facilities_management_procurement_security_policy_document_required_true'
  element :security_notice_false, '#facilities_management_procurement_security_policy_document_required_false'
  element :security_policy_name, '#facilities_management_procurement_security_policy_document_name'
  element :security_policy_number, '#facilities_management_procurement_security_policy_document_version_number'
  element :security_policy_file, '#facilities_management_procurement_security_policy_document_file'
  element :pension_option_false, '#facilities_management_procurement_local_government_pension_scheme_false'


  element :invoicing_contact_details, '[for="facilities_management_procurement_using_buyer_detail_for_invoice_details_false"]'
  element :authorised_contact_details, '[for="facilities_management_procurement_using_buyer_detail_for_authorised_detail_false"]'
  element :notices_contact_details, '[for="facilities_management_procurement_using_buyer_detail_for_notices_detail_false"]'

  elements :contract_details_value, '[data-module="govuk-details"]'
  element :contract_details_value_one, '[data-module="govuk-details"]'
  elements :review_contract_value, 'summary.govuk-details__summary'
  elements :review_contract_value_two, 'tbody > tr > td:nth-child(2)'
  elements :review_contract_expand, '[data-module="govuk-details"] > div'

  element :change_address, '#change-selected-address-link'

  elements :contract_details_text, 'tr > th'
  element :invoiving_contact_details_error, 'div > ul > li'
  elements :contract_details_change_link, 'td > a'
  element :selected_address_container, '#selected-address-container'
  element :enter_invoice_manually, '#add_new_invoice_contact_details_address_1'
  element :enter_authorised_manually, '#add_new_authorised_contact_details_address_1'
  element :enter_notices_manually, '#add_new_notices_contact_details_address_1'

  elements :contract_document_link, 'ul > li > a'

  element :government_procurement_card, '#facilities_management_procurement_payment_method_card'

  element :pension_one_name, 'input#facilities_management_procurement_procurement_pension_funds_attributes_0_name'
  element :pension_one_percentage, 'input#facilities_management_procurement_procurement_pension_funds_attributes_0_percentage'
  element :pension_two_name, 'input#facilities_management_procurement_procurement_pension_funds_attributes_1_name'
  element :pension_two_percentage, 'input#facilities_management_procurement_procurement_pension_funds_attributes_1_percentage'
  element :pension_three_name, 'input#facilities_management_procurement_procurement_pension_funds_attributes_2_name'
  element :pension_three_percentage, 'input#facilities_management_procurement_procurement_pension_funds_attributes_2_percentage'
  elements :pension_input_field, 'p > input'

  element :estimated_cost_option, '[value="1a"]'

  element :procurement_name, '[name="facilities_management_procurement[contract_name]"]'

  element :english_law, '#facilities_management_procurement_governing_law_english'
  element :scottish_law, '#facilities_management_procurement_governing_law_scottish'
  element :ni_law, '#facilities_management_procurement_governing_law_northern_ireland'

  element :number_of_buildings, '#number-of-buildings'

  element :building_name, '#facilities_management_building_building_name'
  element :find_address, '[data-module-element="trigger"]'
  element :find_address_two, '[aria-label="Find address"]'
  element :address_container, '#results-container'
  element :building_region, '[data-module-part="region-results"] > p'
  element :building_address, '[data-module-part="address_text"]'

  element :building_internal_area, '#facilities_management_building_gia'
  element :building_external_area, '#facilities_management_building_external_area'

  element :view_building_type, '.govuk-details__summary'
  element :building_type_other, '#facilities_management_building_building_type_other'
  element :building_type_textbox, '#facilities_management_building_other_building_type'
  elements :radio_items, '.govuk-radios__item > input'

  element :security_type_other, '#facilities_management_building_security_type_other'
  element :security_type_textbox, '#facilities_management_building_other_security_type'

  elements :building_change_link, 'td > a'
end