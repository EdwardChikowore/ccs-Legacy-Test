# frozen_string_literal: true

class Quickview < SitePrism::Page
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

  section :service_basket, 'div.basket' do
    section :service_div, 'div' do
      element :none_selected, 'h3'
      element :service_selected, 'h3 > span:nth-of-type(1)'
      element :remove_all, 'a', text: 'Remove all'
      elements :selected_service, 'ul.govuk-list > li'
      elements :selected_service_msg, 'ul.govuk-list > li > div:nth-child(2)'
    end
  end

  section :quick_view_requirements, '.filter-component-container' do
    section :service, '.service' do
      element :change, 'a'
      element :summary, '.govuk-details__summary'
      element :summary_text, '.govuk-details__text'
    end
    section :region, '.region' do
      element :change, 'a'
      element :summary, '.govuk-details__summary'
      element :summary_text, '.govuk-details__text'
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

  section :region_basket, 'div.basket' do
    section :region_div, 'div' do
      element :none_selected, 'h3'
      element :region_selected, 'h3 > span:nth-of-type(1)'
      element :remove_all, 'a', text: 'Remove all'
      elements :selected_region, 'ul.govuk-list > li'
      elements :selected_region_msg, 'ul.govuk-list > li > div:nth-child(2)'
    end
  end

  section :quick_view_requirements, '.filter-component-container' do
    section :service, '.service' do
      element :change, 'a'
      element :summary, '.govuk-details__summary'
      element :summary_text, '.govuk-details__text'
    end
    section :region, '.region' do
      element :change, 'a'
      element :summary, '.govuk-details__summary'
      element :summary_text, '.govuk-details__text'
    end
  end

  element :requirements_list, '#requirements-list'

  element :contract_name, 'input[name="facilities_management_procurement[contract_name]"]'

  element :header_two, 'h2'

  element :quick_service_caption, 'fieldset.govuk-fieldset > div > p.govuk-caption-m'

  section :long_list, '#proc-CCS-fm-suppliers-long-list' do
    element :heading, 'span.govuk-heading-l.govuk-!-margin-left-2'
    section :up_to_7m, '#sub-lot-1a' do
      element :sublot_1a, 'table > thead > tr > th.govuk-table__header'
    end

    section :between_7_and_50, '#sub-lot-1b' do
      element :sublot_1b, 'table > thead > tr > th.govuk-table__header'
    end

    section :over_50, '#sub-lot-1c' do
      element :sublot_1c, 'table > thead > tr > th.govuk-table__header'
    end
  end
end
