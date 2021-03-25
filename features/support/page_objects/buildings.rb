# frozen_string_literal: true

class Building < SitePrism::Page
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
  section :building_eleven,
          'label[for="facilities_management_procurement_procurement_buildings_attributes_10_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_twelve,
          'label[for="facilities_management_procurement_procurement_buildings_attributes_11_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_thirteen,
          'label[for="facilities_management_procurement_procurement_buildings_attributes_12_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_fourteen,
          'label[for="facilities_management_procurement_procurement_buildings_attributes_13_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  section :building_fifteen,
          'label[for="facilities_management_procurement_procurement_buildings_attributes_14_active"]' do
    element :name, 'legend'
    element :address, 'span'
  end

  element :number_of_buildings, '#number-of-buildings'

  element :building_name, '#facilities_management_building_building_name'

  element :find_address, '#find-address-button'
  element :find_address_two, '[aria-label="Find address"]'
  element :address_container, '#results-container'
  element :building_region, '#region-text'
  element :building_address, '#address-text'
  element :postcode_entry, '.postcode-entry'

  element :building_internal_area, '#facilities_management_building_gia'
  element :building_external_area, '#facilities_management_building_external_area'

  element :view_building_type, '.govuk-details__summary'
  element :building_type_other, '#facilities_management_building_building_type_other'
  element :building_type_textbox, '#facilities_management_building_other_building_type'
  elements :radio_items, '.govuk-radios__item > input'

  element :security_type_other, '#facilities_management_building_security_type_other'
  element :security_type_textbox, '#facilities_management_building_other_security_type'

  elements :building_change_link, 'td > a'
  element :building_status_tag, '.govuk-tag:nth-child(2)'

  element :postcode_entry, '.postcode-entry'

  element :next_pagination, 'li.ccs-last > button'
  element :previous_pagination, 'li.ccs-first > button'
end
