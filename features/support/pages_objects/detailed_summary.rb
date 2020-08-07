class DetailedSummary < SitePrism::Page

  elements  :value, 'td.govuk-table__cell:nth-child(2)'

  elements :change_link, 'td > a'

  elements :procurement_name, 'div > span'

end