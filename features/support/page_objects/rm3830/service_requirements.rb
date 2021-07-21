module Pages::RM3830
  class ServiceRequirements < SitePrism::Page
    elements :change_link, 'td > a'

    element :number_of_hours, '#facilities_management_rm3830_procurement_building_service_service_hours'
    element :service_hours_requirement,
            '#facilities_management_rm3830_procurement_building_service_detail_of_requirement'

    sections :lift_floor, '.lift-row' do
      element :data, 'input'
    end
  end
end
