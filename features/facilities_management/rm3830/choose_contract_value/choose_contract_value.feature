Feature: Assessed value Scenario Three - No Customer Price and at least 1 Service (but not all services) missing FW & BM price

  Background: Log in and capture contract details
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    And I click on "Start a procurement"
    Then I am on "What happens next" page
    And I click on "Continue"
    Then I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "No" for estimated annual cost known
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page

  Scenario: No CP,CAFM, Helpdesk TUPE - LOT 1A
    And I select "No" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter "today" as the inital call-off period start date
    And I select "No" for mobilisation period required
    And I select "No" for optional extension required
    Then I navigate to services page
    And I click on the following services:
      | Mechanical and electrical engineering maintenance |
      | Professional snow & ice clearance                 |
      | Management of billable works                      |
    And for scenario 3, lot 1a I add the details for "Outside London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value "£290,266"
    And unpriced service "Professional snow & ice clearance" should be displayed
    And I can select the following lots:
      | 1a  |
      | 1b  |
      | 1c  |

  Scenario: Includes TUPE, CAFM, Helpdesk and London Building - LOT 1A
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 2 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Professional snow & ice clearance                  |
      |CAFM system                                        |
      |Helpdesk services                                  |
    And for scenario 3, lot 1a I add the details for "London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value "£393,521"
    And unpriced service "Professional snow & ice clearance" should be displayed
    And I can select the following lots:
      | 1a  |
      | 1b  |
      | 1c  |

  Scenario: No CP,CAFM, Helpdesk TUPE - LOT 1B
    And I select "No" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter "today" as the inital call-off period start date
    And I select "No" for mobilisation period required
    And I select "No" for optional extension required
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance    |
      |Ventilation and air conditioning system maintenance  |
      |Professional snow & ice clearance                    |
      |Mobile cleaning                                      |
      |Environmental cleaning service                       |
      |General waste                                        |
      |Recycled waste                                       |
    And for scenario 3, I add the details for "Outside London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value "£17,010,785"
    And unpriced service "Professional snow & ice clearance" should be displayed
    And I can select the following lots:
      | 1b  |
      | 1c  |

  Scenario: Includes TUPE, CAFM, Helpdesk and London Building - LOT 1B
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 2 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    Then I navigate to services page
    And I click on the following services:
      | Mechanical and electrical engineering maintenance   |
      | Ventilation and air conditioning system maintenance |
      | Professional snow & ice clearance                   |
      | Mobile cleaning                                     |
      | Environmental cleaning service                      |
      | General waste                                       |
      | Recycled waste                                      |
      | CAFM system                                         |
      | Helpdesk services                                   |
    And for scenario 3, I add the details for "London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value "£23,044,302"
    And unpriced service "Professional snow & ice clearance" should be displayed
    And I can select the following lots:
      | 1b  |
      | 1c  |

  Scenario: No CP,CAFM, Helpdesk TUPE - LOT 1C
    And I select "No" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '7' years and '0' months for the contract period
    And I enter "today" as the inital call-off period start date
    And I select "No" for mobilisation period required
    And I select "No" for optional extension required
    Then I navigate to services page
    And I click on the following services:
      | Mechanical and electrical engineering maintenance   |
      | Ventilation and air conditioning system maintenance |
      | Professional snow & ice clearance                   |
      | Mobile cleaning                                     |
      | Environmental cleaning service                      |
      | General waste                                       |
      | Recycled waste                                      |
    And for scenario 3, I add the details for "Outside London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value "£115,919,309"
    And unpriced service "Professional snow & ice clearance" should be displayed
    And I cannot select the lot

  Scenario: Includes TUPE, CAFM, Helpdesk and London Building - LOT 1C
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '7' years and '0' months for the contract period
    And I enter an inital call-off period start date 2 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    Then I navigate to services page
    And I click on the following services:
      | Mechanical and electrical engineering maintenance   |
      | Ventilation and air conditioning system maintenance |
      | Professional snow & ice clearance                   |
      | Mobile cleaning                                     |
      | Environmental cleaning service                      |
      | General waste                                       |
      | Recycled waste                                      |
      | CAFM system                                         |
      | Helpdesk services                                   |
    And for scenario 3, I add the details for "London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value "£157,393,752"
    And unpriced service "Professional snow & ice clearance" should be displayed
    And I cannot select the lot
