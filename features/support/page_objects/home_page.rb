class HomePage < SitePrism::Page
  element :main_page_header, 'govuk-heading-xl'

  element :radio_button_yes, 'central_government_yes'
  element :radio_button_no,  'central_government_no'

  element :lot_select1, '#lot_1'
  element :lot_select2, '#lot_2'
  element :lot_select3, '#lot_3'
  element :lot_select4, '#lot_4'

  element :lot1_summary, 'div:nth-child(1) > details > summary > span'
  element :lot2_summary, 'div:nth-child(2) > details > summary > span'
  element :lot3_summary, 'div:nth-child(3) > details > summary > span'
  element :lot4_summary, 'div:nth-child(4) > details > summary > span'
end
