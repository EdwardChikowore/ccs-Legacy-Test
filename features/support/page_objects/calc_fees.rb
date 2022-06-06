# frozen_string_literal: true

class Calc_fees < SitePrism::Page
section :contract_start_date, 'div.govuk-date-input[id="contract-start"]' do
element :day, '#contract_start_date_day'
element :month, '#contract_start_date_month'
element :year, '#contract_start_date_year'
end


section :contract_end_date, 'div.govuk-date-input[id="contract-start"]' do
    element :day, '#contract_end_date_day'
    element :month, '#contract_end_date_month'
    element :year, '#contract_end_date_year'
    end

element :days_per_week, '#days_per_week'
element :charge_per_day, '#day_rate'
element :percentage_mark_up, '#markup_rate'
element :salary, '#salary'
element :fee, '#fixed_term_fee'

section :hire_date, 'div.govuk-date-input[id="hire-date"]' do
element :hire_day, '#hire_date_day'
element :hire_month, '#hire_date_month'
element :hire_year, '#hire_date_year'
end

section :full_employ_start_date, 'div.govuk-date-input[id="contract-start"]' do
element :emp_start_day, '#hire_date_day'
element :emp_start_month, '#hire_date_month'
element :emp_start_year, '#hire_date_year'
end


section :notify_agency_date, 'div.govuk-date-input[id="notice-date"]' do
    element :notice_day, '#notice_date_day'
    element :notice_month, '#notice_date_month'
    element :notice_year, '#notice_date_year'
end

element :perm_fee, '#main-content > div.govuk-body > div:nth-child(1) > div > div > div'
end

#element :cost_of_worker, '<p class="govuk-body supplier-record__worker-cost">£175.44</p>'


#section: first_holiday_start, #holiday-1-start-date
#element: holiday_1_start_day, #holiday_1_start_date_day
#element: holiday_1_start_month, #holiday_1_start_date_month
#element: holiday_1_start_year, #holiday_1_start_date_year
#end

#section: first_holiday_end, #holiday-1-end-date
#element: holiday_1_end_day, #holiday_1_end_date_day
#element: holiday_1_end_month, #holiday_1_end_date_month
#element: holiday_1_end_year, #holiday_1_end_date_year
#end

#section: second_holiday_start, #holiday-2-start-date
#element: holiday_2_start_day, #holiday_2_start_date_day
#element: holiday_2_start_month, #holiday_2_start_date_month
#element: holiday_2_start_year, #holiday_2_start_date_year

#section: second_holiday_end, #holiday-1-end-date
#element: holiday_2_end_day, #holiday_1_end_date_day
#element: holiday_2_end_month, #holiday_1_end_date_month
#element: holiday_2_end_year, #holiday_1_end_date_year
#end
