module Pages::RM3830
  class Quickview < SitePrism::Page
    section :"Maintenance services", '[data-sectionname="Maintenance services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#C_all'
    end

    section :"Horticultural services", '[data-sectionname="Horticultural services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#D_all'
    end

    section :"Statutory obligations", '[data-sectionname="Statutory obligations"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#E_all'
    end

    section :"Catering services", '[data-sectionname="Catering services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#F_all'
    end

    section :"Cleaning services", '[data-sectionname="Cleaning services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#G_all'
    end

    section :"Workplace FM services", '[data-sectionname="Workplace FM services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#H_all'
    end

    section :"Reception services", '[data-sectionname="Reception services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#I_all'
    end

    section :"Security services", '[data-sectionname="Security services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#J_all'
    end

    section :"Waste services", '[data-sectionname="Waste services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#K_all'
    end

    section :"Miscellaneous FM services", '[data-sectionname="Miscellaneous FM services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#L_all'
    end

    section :"Computer-aided facilities management (CAFM)", '[data-sectionname="Computer-aided facilities management (CAFM)"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#service_M-1'
    end

    section :"Helpdesk services", '[data-sectionname="Helpdesk services"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#service_N-1'
    end

    section :"Management of billable works", '[data-sectionname="Management of billable works"]' do
      elements :service_names, '.chooser-input'
      elements :service_descriptions, '.chooser-input label span'
      element :select_all, '#service_O-1'
    end

    section :basket, 'div.basket div' do
      element :amount_selected, 'h3'
    end

    section :quick_view_requirements, '.filter-component-container' do
      section :service, '.service' do
        element :change, 'a'
        element :summary, '.govuk-details__summary'
      end
      section :region, '.region' do
        element :change, 'a'
        element :summary, '.govuk-details__summary'
      end
    end

    element :'North East England Select All', '#region_UKC_all'
    element :'North West England Select All', '#region_UKD_all'
    element :'Yorkshire and Humber Select All', '#region_UKE_all'
    element :'East Midlands Select All', '#region_UKF_all'
    element :'West Midlands Select All', '#region_UKG_all'
    element :'East England Select All', '#region_UKH_all'
    element :'London Select All', '#region_UKI_all'
    element :'South East England Select All', '#region_UKJ_all'
    element :'South West England Select All', '#region_UKK_all'
    element :'Wales Select All', '#region_UKL_all'
    element :'Scotland Select All', '#region_UKM_all'
    element :'Northern Ireland Select All', '#region_UKN_all'

    element :requirements_list, '#requirements-list'

    element :contract_name, 'input[name="facilities_management_rm3830_procurement[contract_name]"]'

    element :quick_service_caption, 'fieldset.govuk-fieldset > div > p.govuk-caption-m'

    section :long_list, '#proc-CCS-fm-suppliers-long-list' do
      section :lot_1a, '#sub-lot-1a' do
        element :sublot_1a, 'table > thead > tr > th.govuk-table__header'
      end

      section :lot_1b, '#sub-lot-1b' do
        element :sublot_1b, 'table > thead > tr > th.govuk-table__header'
      end

      section :lot_1c, '#sub-lot-1c' do
        element :sublot_1c, 'table > thead > tr > th.govuk-table__header'
      end
    end
  end
end
