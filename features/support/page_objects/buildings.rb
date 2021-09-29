module Pages
  class Building < SitePrism::Page
    element :number_of_buildings, '#number-of-buildings'

    element :building_name, '#facilities_management_building_building_name'

    element :postcode_entry, '.postcode-entry'
    element :find_address, '#find-address-button'

    element :building_address, '#address-text'
    element :building_region, '#region-text'

    element :building_internal_area, '#facilities_management_building_gia'
    element :building_external_area, '#facilities_management_building_external_area'

    elements :radio_items, '.govuk-radios__item > input'

    element :view_building_type, '.govuk-details__summary'
    element :building_type_other, '#facilities_management_building_building_type_other'
    element :building_type_textbox, '#facilities_management_building_other_building_type'

    element :security_type_other, '#facilities_management_building_security_type_other'
    element :security_type_textbox, '#facilities_management_building_other_security_type'

    elements :building_change_link, 'td > a'
    element :building_status_tag, '.govuk-tag:nth-child(2)'

    section :building_details_summary, 'table > tbody' do
      section :Name, 'tr:nth-of-type(1)' do
        element :link, 'a'
      end

      section :Description, 'tr:nth-of-type(2)' do
        element :link, 'a'
      end

      section :Address, 'tr:nth-of-type(3)' do
        element :link, 'a'
      end

      section :Region, 'tr:nth-of-type(4)' do
        element :link, 'a'
      end

      section :'Gross internal area', 'tr:nth-of-type(5)' do
        element :link, 'a'
      end

      section :'External area', 'tr:nth-of-type(6)' do
        element :link, 'a'
      end

      section :'Building type', 'tr:nth-of-type(7)' do
        element :link, 'a'
      end

      section :'Security clearance', 'tr:nth-of-type(8)' do
        element :link, 'a'
      end
    end

    element :next_pagination, 'li.ccs-last > button'
  end
end
