class ServiceRequirements < SitePrism::Page

  sections :service_table, 'tr.govuk-table__row' do
    element :name, 'th'
    elements :volume, 'td:nth-child(3)'

  end

    elements :volume, 'tr.govuk-table__row > td:nth-child(3)'


end