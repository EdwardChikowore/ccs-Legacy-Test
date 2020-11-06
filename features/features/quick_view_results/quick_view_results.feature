Feature: Quick view results

  Background:
    Given I am a logged in user
    Then I am on your account page
    When I click on "Quick view suppliers"
    And I am on "Services" page
    And I click on open all
    And I select all maintenance services
    And I should see text "22 services selected" in the service selection basket
    And I click on "Continue"
    And I am on "Regions" page
    And I click on open all
    And I click on select all for North East England
    And I should see text "2 regions selected" in the region selection basket
    Then I click on "Continue"
    And I am on "Quick view results" page

  Scenario: Service and region selection
    Given I open the regions selected
    Then I should see the following regions:
      | Tees Valley and Durham            |
      | Northumberland and Tyne and Wear  |
    Given I open the services selected
    Then I should see the following services:
      | Mechanical and electrical engineering maintenance             |
      | Ventilation and air conditioning system maintenance           |
      | Environmental cleaning service                                |
      | Fire detection and firefighting systems maintenance           |
      | Security, access and intruder systems maintenance             |
      | Internal & external building fabric maintenance               |
      | Building management system (BMS) maintenance                  |
      | Standby power system maintenance                              |
      | High voltage (HV) and switchgear maintenance                  |
      | Lifts, hoists & conveyance systems maintenance                |
      | Catering equipment maintenance                                |
      | Reactive maintenance services                                 |
      | Planned / group re-lamping service                            |
      | Automated barrier control system maintenance                  |
      | Audio visual (AV) equipment maintenance                       |
      | Television cabling maintenance                                |
      | Mail room equipment maintenance                               |
      | Office machinery servicing and maintenance                    |
      | Voice announcement system maintenance                         |
      | Locksmith services                                            |
      | Airport and aerodrome maintenance services                    |
      | Specialist maintenance services                               |

  Scenario: Hide and Show requirements
    Given I click on "Hide requirements"
    Then the requirements should be hidden
    Given I click on "Show requirements"
    Then the requirements should be shown

  Scenario: Change regions
    Given I change region selection
    Then I am on "Regions" page

  Scenario: Change services
    Given I change service selection
    Then I am on "Services" page

  Scenario: Contract name - Save and continue to procurement
    Given I add contract name
    And I click on "Save and continue to procurement"
    Then I am on "What happens next" page

  Scenario: Contract name - Save and return to procurements dashboard
    Given I add contract name
    And I click on "Save and return to procurements dashboard"
    Then I am on "Procurements dashboard" page

  Scenario: Contract name - Return to your account
    Given I click on "Return to your account"
    Then I am on your account page

  Scenario Outline: Contract name - Save - validation empty
    Given I click on "<button>"
    Then I should see the following error messages
      | Enter your contract name |

  Examples:
    | button                                    |
    | Save and continue to procurement          |
    | Save and return to procurements dashboard |

  Scenario Outline: Contract name - Save - validation duplicate name
    Given I add contract name
    And I click on "Save and return to procurements dashboard"
    Then I am on "Procurements dashboard" page
    And I click on "Return to your account"
    Then I am on your account page
    When I click on "Quick view suppliers"
    And I am on "Services" page
    And I select all maintenance services
    And I should see text "22 services selected" in the service selection basket
    And I click on "Continue"
    And I am on "Regions" page
    And I click on select all for North East England
    And I should see text "2 regions selected" in the region selection basket
    Then I click on "Continue"
    And I am on "Quick view results" page
    Then I add duplicate contract name
    And I click on "<button>"
    Then I should see the following error messages
      | This contract name is already in use |

  Examples:
    | button                                    |
    | Save and continue to procurement          |
    | Save and return to procurements dashboard |
