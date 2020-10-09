Feature: Quick view results - Region selection

  Background:
    Given I am a logged in user
    Then I am on your account page
    When I click on "Quick view suppliers"
    And I am on "Services" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I am on "Regions" page

  Scenario: View all regions on quick view results
    Given I click on open all
    And I click on select all for North East England
    And I click on select all for North West England
    And I click on select all for Yorkshire and Humber
    And I click on select all for East Midlands
    And I click on select all for West Midlands
    And I click on select all for East England
    And I click on select all for London
    And I click on select all for South East England
    And I click on select all for South West England
    And I click on select all for Wales
    And I click on select all for Scotland
    And I click on select all for Northern Ireland
    And I should see text "73 regions selected"
    Then I click on "Continue"
    And I am on "Quick view results" page
    Given I open the regions selected
    Then I should see the following regions:
      | Tees Valley and Durham                                                                                              |
      | Northumberland and Tyne and Wear                                                                                    |
      | Cumbria                                                                                                             |
      | Greater Manchester                                                                                                  |
      | Lancashire                                                                                                          |
      | Cheshire                                                                                                            |
      | Merseyside                                                                                                          |
      | East Yorkshire and Northern Lincolnshire                                                                            |
      | North Yorkshire                                                                                                     |
      | South Yorkshire                                                                                                     |
      | West Yorkshire                                                                                                      |
      | Derbyshire and Nottinghamshire                                                                                      |
      | Leicestershire, Rutland and Northamptonshire                                                                        |
      | Lincolnshire                                                                                                        |
      | Herefordshire, Worcestershire and Warwickshire                                                                      |
      | Shropshire and Staffordshire                                                                                        |
      | West Midlands (county)                                                                                              |
      | East Anglia                                                                                                         |
      | Bedfordshire and Hertfordshire                                                                                      |
      | Essex                                                                                                               |
      | Inner London - West                                                                                                 |
      | Inner London - East                                                                                                 |
      | Outer London - East and North East                                                                                  |
      | Outer London - South                                                                                                |
      | Outer London - West and North West                                                                                  |
      | Berkshire, Buckinghamshire and Oxfordshire                                                                          |
      | Surrey, East and West Sussex                                                                                        |
      | Hampshire and Isle of Wight                                                                                         |
      | Kent                                                                                                                |
      | Gloucestershire, Wiltshire and Bristol/Bath area                                                                    |
      | Dorset and Somerset                                                                                                 |
      | Cornwall and Isles of Scilly                                                                                        |
      | Devon                                                                                                               |
      | Isle of Anglesey                                                                                                    |
      | Gwynedd                                                                                                             |
      | Conwy and Denbighshire                                                                                              |
      | South West Wales (Ceredigion, Carmarthenshire, Pembrokeshire)                                                       |
      | Central Valleys (Merthyr Tydfil, Rhondda Cynon Taff)                                                                |
      | Gwent Valleys (Blaenau Gwent, Caerphilly, Torfaen)                                                                  |
      | Bridgend and Neath Port Talbot                                                                                      |
      | Swansea                                                                                                             |
      | Monmouthshire and Newport                                                                                           |
      | Cardiff and Vale of Glamorgan                                                                                       |
      | Flintshire and Wrexham                                                                                              |
      | Powys                                                                                                               |
      | Angus and Dundee                                                                                                    |
      | Clackmannanshire and Fife                                                                                           |
      | East Lothian and Midlothian                                                                                         |
      | Scottish Borders                                                                                                    |
      | Edinburgh                                                                                                           |
      | Falkirk                                                                                                             |
      | Perth and Kinross, and Stirling                                                                                     |
      | West Lothian                                                                                                        |
      | East Dunbartonshire, West Dunbartonshire, and Helensburgh and Lomond                                                |
      | Dumfries and Galloway                                                                                               |
      | East and North Ayrshire mainland                                                                                    |
      | Glasgow                                                                                                             |
      | Inverclyde, East Renfrewshire, and Renfrewshire                                                                     |
      | North Lanarkshire                                                                                                   |
      | South Ayrshire                                                                                                      |
      | South Lanarkshire                                                                                                   |
      | Aberdeen and Aberdeenshire                                                                                          |
      | Caithness and Sutherland, and Ross and Cromarty                                                                     |
      | Inverness, Nairn, Moray, and Badenoch and Strathspey                                                                |
      | Lochaber, Skye and Lochalsh, Arran and Cumbrae, and Argyll and Bute (except Helensburgh and Lomond)                 |
      | Eilean Siar (Western Isles)                                                                                         |
      | Orkney Islands                                                                                                      |
      | Shetland Islands                                                                                                    |
      | Belfast                                                                                                             |
      | Outer Belfast (Carrickfergus, Castlereagh, Lisburn, Newtownabbey, North Down)                                       |
      | East of Northern Ireland (Antrim, Ards, Ballymena, Banbridge, Craigavon, Down, Larne)                               |
      | North of Northern Ireland (Ballymoney, Coleraine, Derry, Limavady, Moyle, Strabane)                                 |
      | West and South of Northern Ireland (Armagh, Cookstown, Dungannon, Fermanagh, Magherafelt, Newry and Mourne, Omagh)  |

  Scenario: Change region selection
    Given I click on open all
    And I click on select all for North West England
    And I should see text "5 regions selected"
    Then I click on "Continue"
    And I am on "Quick view results" page
    Given I change region selection
    Then I am on "Regions" page
    And I click on open all
    And I click on select all for North East England
    And I click on select all for North West England
    And I should see text "2 regions selected"
    Then I click on "Continue"
    And I am on "Quick view results" page
    Then I open the regions selected
    Then I should see the following regions:
      | Tees Valley and Durham            |
      | Northumberland and Tyne and Wear  |

  Scenario: Change region selection - validation
    Given I click on open all
    And I click on select all for North East England
    And I click on select all for North West England
    And I click on select all for Yorkshire and Humber
    And I click on select all for East Midlands
    And I click on select all for West Midlands
    And I click on select all for East England
    And I click on select all for London
    And I click on select all for South East England
    And I click on select all for South West England
    And I click on select all for Wales
    And I click on select all for Scotland
    And I click on select all for Northern Ireland
    And I should see text "73 regions selected"
    Then I click on "Continue"
    And I am on "Quick view results" page
    Given I change region selection
    Then I am on "Regions" page
    And I click on "Remove all"
    And I should see text "No regions selected"
    Then I click on "Continue"
    Then I should see the following error messages
      | Select at least one region you need to include in your procurement  |