Feature: Facilities Management - Location - Page Content

  Background:
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Continue"

  Scenario: FM - Locations - Content
    And I am on "Regions" page
    And the following text is displayed:
      | Where are your buildings located? |
      | North East (England)              |
      | North West (England)              |
      | Yorkshire and The Humber          |
      | East Midlands (England)           |
      | West Midlands (England)           |
      | East of England                   |
      | London                            |
      | South East (England)              |
      | South West (England)              |
      | Wales                             |
      | Scotland                          |
      | Northern Ireland                  |

  Scenario: FM - Locations - Areas within Location - North East England - Content
    And I click on "North East (England)"
    And the following region is displayed:
      | Tees Valley and Durham           |
      | Northumberland and Tyne and Wear |
      | Or                               |
      | Select all                       |

  Scenario: FM - Locations - Areas within Location - North West England - Content
    And I click on "North West (England)"
    And the following region is displayed:
      | Cumbria            |
      | Greater Manchester |
      | Lancashire         |
      | Cheshire           |
      | Merseyside         |
      | Select all         |

  Scenario: FM - Locations - Areas within Location - Yorkshire and The Humber - Content
    And I click on "Yorkshire and The Humber"
    And the following region is displayed:
      | East Yorkshire and Northern Lincolnshire |
      | North Yorkshire                          |
      | South Yorkshire                          |
      | West Yorkshire                           |
      | Select all                               |

  Scenario: FM - Locations - Areas within Location - East Midlands (England) - Content
    And I click on "East Midlands (England)"
    And the following region is displayed:
      | Derbyshire and Nottinghamshire               |
      | Leicestershire, Rutland and Northamptonshire |
      | Lincolnshire                                 |
      | Select all                                   |

  Scenario: FM - Locations - Areas within Location - West Midlands (England) - Content
    And I click on "West Midlands (England)"
    And the following region is displayed:
      | Herefordshire, Worcestershire and Warwickshire |
      | Shropshire and Staffordshire                   |
      | West Midlands (county)                         |
      | Select all                                     |

  Scenario: FM - Locations - Areas within Location - East of England - Content
    And I click on "East of England"
    And the following region is displayed:
      | East Anglia                    |
      | Bedfordshire and Hertfordshire |
      | Essex                          |
      | Select all                     |

  Scenario: FM - Locations - Areas within Location - London - Content
    And I click on "London"
    And the following region is displayed:
      | Inner London - West                |
      | Inner London - East                |
      | Outer London - East and North East |
      | Outer London - South               |
      | Outer London - West and North West |
      | Select all                         |

  Scenario: FM - Locations - Areas within Location - South East (England) - Content
    And I click on "South East (England)"
    And the following region is displayed:
      | Berkshire, Buckinghamshire and Oxfordshire |
      | Surrey, East and West Sussex               |
      | Hampshire and Isle of Wight                |
      | Kent                                       |
      | Select all                                 |

  Scenario: FM - Locations - Areas within Location - South West (England) - Content
    And I click on "South West (England)"
    And the following region is displayed:
      | Gloucestershire, Wiltshire and Bristol/Bath area |
      | Dorset and Somerset                              |
      | Cornwall and Isles of Scilly                     |
      | Devon                                            |

  Scenario: FM - Locations - Areas within Location - Wales - Content
    And I click on "Wales"
    And the following region is displayed:
      | Isle of Anglesey                                              |
      | Gwynedd                                                       |
      | Conwy and Denbighshire                                        |
      | South West Wales (Ceredigion, Carmarthenshire, Pembrokeshire) |
      | Central Valleys (Merthyr Tydfil, Rhondda Cynon Taff)          |
      | Gwent Valleys (Blaenau Gwent, Caerphilly, Torfaen)            |
      | Bridgend and Neath Port Talbot                                |
      | Swansea                                                       |
      | Monmouthshire and Newport                                     |
      | Cardiff and Vale of Glamorgan                                 |
      | Flintshire and Wrexham                                        |
      | Powys                                                         |
      | Select all                                                    |

  Scenario: FM - Locations - Areas within Location - Scotland - Content
    And I click on "Scotland"
    And the following region is displayed:
      | Angus and Dundee                                                                                    |
      | Clackmannanshire and Fife                                                                           |
      | East Lothian and Midlothian                                                                         |
      | Scottish Borders                                                                                    |
      | Edinburgh                                                                                           |
      | Falkirk                                                                                             |
      | Perth and Kinross, and Stirling                                                                     |
      | West Lothian                                                                                        |
      | East Dunbartonshire, West Dunbartonshire, and Helensburgh and Lomond                                |
      | Dumfries and Galloway                                                                               |
      | East and North Ayrshire mainland                                                                    |
      | Glasgow                                                                                             |
      | Inverclyde, East Renfrewshire, and Renfrewshire                                                     |
      | North Lanarkshire                                                                                   |
      | South Ayrshire                                                                                      |
      | South Lanarkshire                                                                                   |
      | Aberdeen and Aberdeenshire                                                                          |
      | Caithness and Sutherland, and Ross and Cromarty                                                     |
      | Inverness, Nairn, Moray, and Badenoch and Strathspey                                                |
      | Lochaber, Skye and Lochalsh, Arran and Cumbrae, and Argyll and Bute (except Helensburgh and Lomond) |
      | Eilean Siar (Western Isles)                                                                         |
      | Orkney Islands                                                                                      |
      | Shetland Islands                                                                                    |
      | Select all                                                                                          |

  Scenario: FM - Locations - Areas within Location - Northern Ireland - Content
    And I click on "Northern Ireland"
    And the following region is displayed:
      | Belfast                                                                                                            |
      | Outer Belfast (Carrickfergus, Castlereagh, Lisburn, Newtownabbey, North Down)                                      |
      | East of Northern Ireland (Antrim, Ards, Ballymena, Banbridge, Craigavon, Down, Larne)                              |
      | North of Northern Ireland (Ballymoney, Coleraine, Derry, Limavady, Moyle, Strabane)                                |
      | West and South of Northern Ireland (Armagh, Cookstown, Dungannon, Fermanagh, Magherafelt, Newry and Mourne, Omagh) |
      | Select all                                                                                                         |
