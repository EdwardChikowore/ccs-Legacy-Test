Feature: Facilities Management - Search Results - Search - Create

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select all maintenance services
    And I click on "Continue"
    And I click on open all
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
    And I click on "Continue"

  Scenario: FM - Results - General Content

    Then I am on "Quick view results" page
    And The following is displayed on quick search filter section:
      | Region                  |
      | 73 selected             |
      | Service                 |
      | 22 selected             |


  Scenario: FM - Results - General Content
    Then I am on "Quick view results" page
    And The up to 7m is displayed            
    And The between 7m and 50m is displayed
    And The over 50m is displayed
    And The following is displayed:
      | Sub-lot 1a              |
      | Sub-lot 1b              |
      | Sub-lot 1c              |




  Scenario: FM - Results - Regions

    Then I am on "Quick view results" page
    And The following is displayed on quick search filter section:
      | Tees Valley and Durham                                                                                            |
      | Northumberland and Tyne and Wear                                                                                  |
      | Cumbria                                                                                                           |
      | Greater Manchester                                                                                                |
      | Lancashire                                                                                                        |
      | Cheshire                                                                                                          |
      | Merseyside                                                                                                        |
      | East Yorkshire and Northern Lincolnshire                                                                          |
      | North Yorkshire                                                                                                   |
      | South Yorkshire                                                                                                   |
      | West Yorkshire                                                                                                    |
      | Derbyshire and Nottinghamshire                                                                                    |
      | Leicestershire, Rutland and Northamptonshire                                                                      |
      | Lincolnshire                                                                                                      |
      | Herefordshire, Worcestershire and Warwickshire                                                                    |
      | Shropshire and Staffordshire                                                                                      |
      | West Midlands (county)                                                                                            |
      | East Anglia                                                                                                       |
      | Bedfordshire and Hertfordshire                                                                                    |
      | Essex                                                                                                             |
      | Inner London - West                                                                                               |
      | Inner London - East                                                                                               |
      | Outer London - East and North East                                                                                |
      | Outer London - South                                                                                              |
      | Outer London - West and North West                                                                                |
      | Berkshire, Buckinghamshire and Oxfordshire                                                                        |
      | Surrey, East and West Sussex                                                                                      |
      | Hampshire and Isle of Wight                                                                                       |
      | Kent                                                                                                              |
      | Gloucestershire, Wiltshire and Bristol/Bath area                                                                  |
      | Dorset and Somerset                                                                                               |
      | Cornwall and Isles of Scilly                                                                                      |
      | Devon                                                                                                             |
      | Isle of Anglesey                                                                                                  |
      | Gwynedd                                                                                                           |
      | Conwy and Denbighshire                                                                                            |
      | South West Wales (Ceredigion, Carmarthenshire, Pembrokeshire)                                                     |
      | Central Valleys (Merthyr Tydfil, Rhondda Cynon Taff)                                                              |
      | Gwent Valleys (Blaenau Gwent, Caerphilly, Torfaen)                                                                |
      | Bridgend and Neath Port Talbot                                                                                    |
      | Swansea                                                                                                           |
      | Monmouthshire and Newport                                                                                         |
      | Cardiff and Vale of Glamorgan                                                                                     |
      | Flintshire and Wrexham                                                                                            |
      | Powys                                                                                                             |
      | Angus and Dundee                                                                                                  |
      | Clackmannanshire and Fife                                                                                         |
      | East Lothian and Midlothian                                                                                       |
      | Scottish Borders                                                                                                  |
      | Edinburgh                                                                                                         |
      | Falkirk                                                                                                           |
      | Perth and Kinross, and Stirling                                                                                   |
      | West Lothian                                                                                                      |
      | East Dunbartonshire, West Dunbartonshire, and Helensburgh and Lomond                                              |
      | Dumfries and Galloway                                                                                             |
      | East and North Ayrshire mainland                                                                                  |
      | Glasgow                                                                                                           |
      | Inverclyde, East Renfrewshire, and Renfrewshire                                                                   |
      | North Lanarkshire                                                                                                 |
      | South Ayrshire                                                                                                    |
      | South Lanarkshire                                                                                                 |
      | Aberdeen and Aberdeenshire                                                                                        |
      | Caithness and Sutherland, and Ross and Cromarty                                                                   |
      | Inverness, Nairn, Moray, and Badenoch and Strathspey                                                              |
      | Lochaber, Skye and Lochalsh, Arran and Cumbrae, and Argyll and Bute (except Helensburgh and Lomond)               |
      | Eilean Siar (Western Isles)                                                                                       |
      | Orkney Islands                                                                                                    |
      | Shetland Islands                                                                                                  |
      | Belfast                                                                                                           |
      | Outer Belfast (Carrickfergus, Castlereagh, Lisburn, Newtownabbey, North Down)                                     |
      | East of Northern Ireland (Antrim, Ards, Ballymena, Banbridge, Craigavon, Down, Larne)                             |
      | North of Northern Ireland (Ballymoney, Coleraine, Derry, Limavady, Moyle, Strabane)                               |
      | West and South of Northern Ireland (Armagh, Cookstown, Dungannon, Fermanagh, Magherafelt, Newry and Mourne, Omagh |
      |                                                                                                                   |


  Scenario: FM - Results - Services

    Then I am on "Quick view results" page
    And The following is displayed on quick search filter section:
      | Airport and aerodrome maintenance services          |
      | Audio visual (AV) equipment maintenance             |
      | Automated barrier control system maintenance        |
      | Building management system (BMS) maintenance        |
      | Catering equipment maintenance                      |
      | Environmental cleaning service                      |
      | Fire detection and firefighting systems maintenance |
      | High voltage (HV) and switchgear maintenance        |
      | Internal & external building fabric maintenance     |
      | Lifts, hoists & conveyance systems maintenance      |
      | Locksmith services                                  |
      | Mail room equipment maintenance                     |
      | Mechanical and electrical engineering maintenance   |
      | Office machinery servicing and maintenance          |
      | Planned / group re-lamping service                  |
      | Reactive maintenance services                       |
      | Security, access and intruder systems maintenance   |
      | Specialist maintenance services                     |
      | Standby power system maintenance                    |
      | Television cabling maintenance                      |
      | Ventilation and air conditioning system maintenance |
      | Voice announcement system maintenance               |
      |                                                     |






