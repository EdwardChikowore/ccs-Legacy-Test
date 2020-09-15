@accessibility
Feature:  FM - Accessibility DA In Draft

  Scenario: FM - Detailed Search - Direct award pricing
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    Then the page should be accessible

  Scenario: FM - Detailed Search - What happens next
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    Then the page should be accessible


  Scenario: FM - Detailed Search - What happens next
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Important information" page
    Then the page should be accessible


  Scenario: FM - Detailed Search - Contract page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    Then the page should be accessible

  Scenario: FM - Detailed Search - Payment method
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    And I click on the first question for "Payment method"
    And I am on "Payment method" page
    And I click on "Save and return"
    Then the page should be accessible

  Scenario: FM - Detailed Search - Invoicing contact details
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    And I click on "Continue"
    Then the page should be accessible

  Scenario: FM - Detailed Search - Authorised representative details
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the third question for "Authorised representative details"
    And I am on "Authorised representative details" page
    When I click on "Continue"
    Then the page should be accessible


  Scenario: FM - Detailed Search - New authorised representative details
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the third question for "Authorised representative details"
    And I am on "Authorised representative details" page
    When I click on "false" option
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I click on "Save and return"
    Then the page should be accessible

  Scenario: FM - Detailed Search - New authorised representative details - Find address
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the third question for "Authorised representative details"
    And I am on "Authorised representative details" page
    When I click on "false" option
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Postcode             | SW1W 9SZ        |
    And I click on "Find address"
    And I select address "151 Buckingham Palace Road, London SW1W 9SZ" from the drop down option
    And I click on "Save and return"
    Then the page should be accessible

  Scenario: FM - Detailed Search - New authorised representative details - Add address
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the third question for "Authorised representative details"
    And I am on "Authorised representative details" page
    When I click on "false" option
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Postcode             | SW1W 9SZ        |
    And I click on enter authorised representative address manually
    And I am on "Add address" page
    And I click on "Continue"
    Then the page should be accessible

  Scenario: FM - Detailed Search - Notices contact details
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the fourth question for "Notices contact details"
    And I am on "Notices contact details" page
    And I click on "Continue"
    Then the page should be accessible


  Scenario: FM - Detailed Search - Security policy document - Option Yes - Error messages
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the fifth question for "Security policy"
    And I am on "Security policy document" page
    When I click on "true" option
    And I click on "Save and return"
    Then the page should be accessible


  Scenario: FM - Detailed Search - Local Government Pension Scheme
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    And I click on "Save and continue"
    Then the page should be accessible

  Scenario: FM - Detailed Search - Local Government Pension Scheme - Yes
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    When I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    When I click on "true" option
    And I click on "Save and continue"
    And I click on "Save and return"
    Then the page should be accessible

  Scenario: FM - Detailed Search - Local Government Pension Scheme - Yes - 5 Empty
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    When I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    When I click on "true" option
    And I click on "Save and continue"
    And I click on "Add another pension fund (98 remaining)"
    And I click on "Add another pension fund (97 remaining)"
    And I click on "Add another pension fund (96 remaining)"
    And I click on "Add another pension fund (95 remaining)"
    And I click on "Add another pension fund (94 remaining)"
    And I click on "Add another pension fund (93 remaining)"
    And I click on "Add another pension fund (92 remaining)"
    And I click on "Add another pension fund (91 remaining)"
    And I click on "Add another pension fund (90 remaining)"
    And I click on "Add another pension fund (89 remaining)"
    And I click on "Add another pension fund (88 remaining)"
    And I click on "Add another pension fund (87 remaining)"
    And I click on "Add another pension fund (86 remaining)"
    And I click on "Add another pension fund (85 remaining)"
    And I click on "Add another pension fund (84 remaining)"
    And I click on "Add another pension fund (83 remaining)"
    And I click on "Add another pension fund (82 remaining)"
    And I click on "Add another pension fund (81 remaining)"
    And I click on "Add another pension fund (80 remaining)"
    And I click on "Add another pension fund (79 remaining)"
    And I click on "Add another pension fund (78 remaining)"
    And I click on "Add another pension fund (77 remaining)"
    And I click on "Add another pension fund (76 remaining)"
    And I click on "Add another pension fund (75 remaining)"
    And I click on "Add another pension fund (74 remaining)"
    And I click on "Add another pension fund (73 remaining)"
    And I click on "Add another pension fund (72 remaining)"
    And I click on "Add another pension fund (71 remaining)"
    And I click on "Add another pension fund (70 remaining)"
    And I click on "Add another pension fund (69 remaining)"
    And I click on "Add another pension fund (68 remaining)"
    And I click on "Add another pension fund (67 remaining)"
    And I click on "Add another pension fund (66 remaining)"
    And I click on "Add another pension fund (65 remaining)"
    And I click on "Add another pension fund (64 remaining)"
    And I click on "Add another pension fund (63 remaining)"
    And I click on "Add another pension fund (62 remaining)"
    And I click on "Add another pension fund (61 remaining)"
    And I click on "Add another pension fund (60 remaining)"
    And I click on "Add another pension fund (59 remaining)"
    And I click on "Add another pension fund (58 remaining)"
    And I click on "Add another pension fund (57 remaining)"
    And I click on "Add another pension fund (56 remaining)"
    And I click on "Add another pension fund (55 remaining)"
    And I click on "Add another pension fund (54 remaining)"
    And I click on "Add another pension fund (53 remaining)"
    And I click on "Add another pension fund (52 remaining)"
    And I click on "Add another pension fund (51 remaining)"
    And I click on "Add another pension fund (50 remaining)"
    And I click on "Add another pension fund (49 remaining)"
    And I click on "Add another pension fund (48 remaining)"
    And I click on "Add another pension fund (47 remaining)"
    And I click on "Add another pension fund (46 remaining)"
    And I click on "Add another pension fund (45 remaining)"
    And I click on "Add another pension fund (44 remaining)"
    And I click on "Add another pension fund (43 remaining)"
    And I click on "Add another pension fund (42 remaining)"
    And I click on "Add another pension fund (41 remaining)"
    And I click on "Add another pension fund (40 remaining)"
    And I click on "Add another pension fund (39 remaining)"
    And I click on "Add another pension fund (38 remaining)"
    And I click on "Add another pension fund (37 remaining)"
    And I click on "Add another pension fund (36 remaining)"
    And I click on "Add another pension fund (35 remaining)"
    And I click on "Add another pension fund (34 remaining)"
    And I click on "Add another pension fund (33 remaining)"
    And I click on "Add another pension fund (32 remaining)"
    And I click on "Add another pension fund (31 remaining)"
    And I click on "Add another pension fund (30 remaining)"
    And I click on "Add another pension fund (29 remaining)"
    And I click on "Add another pension fund (28 remaining)"
    And I click on "Add another pension fund (27 remaining)"
    And I click on "Add another pension fund (26 remaining)"
    And I click on "Add another pension fund (25 remaining)"
    And I click on "Add another pension fund (24 remaining)"
    And I click on "Add another pension fund (23 remaining)"
    And I click on "Add another pension fund (22 remaining)"
    And I click on "Add another pension fund (21 remaining)"
    And I click on "Add another pension fund (20 remaining)"
    And I click on "Add another pension fund (19 remaining)"
    And I click on "Add another pension fund (18 remaining)"
    And I click on "Add another pension fund (17 remaining)"
    And I click on "Add another pension fund (16 remaining)"
    And I click on "Add another pension fund (15 remaining)"
    And I click on "Add another pension fund (14 remaining)"
    And I click on "Add another pension fund (13 remaining)"
    And I click on "Add another pension fund (12 remaining)"
    And I click on "Add another pension fund (11 remaining)"
    And I click on "Add another pension fund (10 remaining)"
    And I click on "Add another pension fund (9 remaining)"
    And I click on "Add another pension fund (8 remaining)"
    And I click on "Add another pension fund (7 remaining)"
    And I click on "Add another pension fund (6 remaining)"
    And I click on "Add another pension fund (5 remaining)"
    And I click on "Add another pension fund (4 remaining)"
    And I click on "Add another pension fund (3 remaining)"
    And I click on "Add another pension fund (2 remaining)"
    And I click on "Add another pension fund (1 remaining)"
    And I click on "Add another pension fund (0 remaining)"
    Then I click on "Save and return"
    Then the page should be accessible


  Scenario: FM - Detailed Search - Local Government Pension Scheme - Yes - Duplicates
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    When I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    When I click on "true" option
    And I click on "Save and continue"
    And I enter duplicate pension name
    Then I click on "Save and return"
    Then the page should be accessible

  Scenario: FM - Detailed Search - Contract details
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer contract details question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Continue"
    And I am on "Contract details" page
    And I click on the first question for "Payment method"
    And I am on "Payment method" page
    And I select Bacs payment
    And I click on "Save and return"
    And I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    And I select invoicing contact
    And I click on "Continue"
    And I click on the third question for "Authorised representative details"
    And I am on "Authorised representative details" page
    And I select Authorised representative details
    And I click on "Continue"
    And I click on the fourth question for "Notices contact details"
    And I am on "Notices contact details" page
    And I select Notices contact details
    And I click on "Continue"
    And I click on the fifth question for "Security policy"
    And I am on "Security policy document" page
    And I select Security policy option
    And I click on "Save and return"
    And I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    When I click on "false" option
    And I click on "Save and continue"
    And I expand the Invoicing contact details
    And I expand the Authorised representative details
    And I expand the Notices contact details
    Then the page should be accessible
