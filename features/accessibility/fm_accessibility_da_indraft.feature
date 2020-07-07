#Feature:  FM - Accessibility DA In Draft
#
#  Scenario: FM - Detailed Search - Select services
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    And user clicks "accessibility"
#    And user clicks "Select services"
#
#  Scenario: FM - Detailed Search - Select services - Save and Continue
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    And user clicks "accessibility"
#    And user clicks "Select services"
#
#  Scenario: FM - Detailed Search - Direct award pricing
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility5"
#    Then user is on the "Direct award pricing" page
#
#
#  Scenario: FM - Detailed Search - What happens next
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility5"
#    Then user is on the "What happens next" page
#    Then user clicks "Show all"
#
#
#  Scenario: FM - Detailed Search - Direct award pricing
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility5"
#    Then user is on the "Direct award pricing" page
#
#
#  Scenario: FM - Detailed Search - What happens next
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility5"
#    Then user is on the "What happens next" page
#    Then user clicks "Show all"
#
#
## ToDo Maint
##  Scenario: FM - Detailed Search - Important information
##    Given the user is on the "FM Home" page
##    When user clicks "Start now"
##    When user clicks "Sign in with Cognito"
##    When user is on "Procurements" page
##    Then user is on "Procurements dashboard" page
##    When user clicks "accessibility5"
##    Then user is on the "Important information" page
#
#
#  Scenario: FM - Detailed Search - Contract page
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility6"
#    Then user is on the "Contract details" page
#
#
#  Scenario: FM - Detailed Search - Payment method
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Payment method"
#    Then user clicks "save_and_return"
#
#
#  Scenario: FM - Detailed Search - Invoicing contact details
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Invoicing contact details"
#    Then user clicks "commit"
#
#  Scenario: FM - Detailed Search - Authorised representative details
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Authorised representative details"
#    Then user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - New authorised representative details
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Authorised representative details"
#    And user chooses "facilities_management_procurement_using_buyer_detail_for_authorised_detail_false"
#    Then user clicks "commit"
#    Then user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - New authorised representative details - Find address
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Authorised representative details"
#    And user chooses "facilities_management_procurement_using_buyer_detail_for_authorised_detail_false"
#    Then user clicks "commit"
#    Then user clicks "commit"
#    When user enters "WC2A1AA" in "buyer-details-postcode"
#    And user clicks link "buyer-details-find-address-btn"
#    And user clicks link "buyer-details-postcode-lookup-results"
#
#
#  Scenario: FM - Detailed Search - New authorised representative details - Add address
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Authorised representative details"
#    And user chooses "facilities_management_procurement_using_buyer_detail_for_authorised_detail_false"
#    Then user clicks "commit"
#    Then user clicks "commit"
#    When user clicks "I can't find my address in the list"
#    Then user is on the "New authorised representative details" page
#    And user is on the "Add address" page
#    And user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - Notices contact details
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Notices contact details"
#    Then user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - Security policy document - Option Yes - Error messages
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Security policy document"
#    When user chooses "facilities_management_procurement_security_policy_document_required_true"
#    Then user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - Local Government Pension Scheme
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Local Government Pension Scheme"
#    Then user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - Local Government Pension Scheme - Yes
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Local Government Pension Scheme"
#    And user chooses "facilities_management_procurement_local_government_pension_scheme_true"
#    Then user clicks "commit"
#    Then user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - Local Government Pension Scheme - Yes - 5 Empty
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Local Government Pension Scheme"
#    And user chooses "facilities_management_procurement_local_government_pension_scheme_true"
#    When user clicks "commit"
#    And user clicks "Add another pension fund (98 remaining)"
#    And user clicks "Add another pension fund (97 remaining)"
#    And user clicks "Add another pension fund (96 remaining)"
#    And user clicks "Add another pension fund (95 remaining)"
#    And user clicks "Add another pension fund (94 remaining)"
#    And user clicks "Add another pension fund (93 remaining)"
#    And user clicks "Add another pension fund (92 remaining)"
#    And user clicks "Add another pension fund (91 remaining)"
#    And user clicks "Add another pension fund (90 remaining)"
#    And user clicks "Add another pension fund (89 remaining)"
#    And user clicks "Add another pension fund (88 remaining)"
#    And user clicks "Add another pension fund (87 remaining)"
#    And user clicks "Add another pension fund (86 remaining)"
#    And user clicks "Add another pension fund (85 remaining)"
#    And user clicks "Add another pension fund (84 remaining)"
#    And user clicks "Add another pension fund (83 remaining)"
#    And user clicks "Add another pension fund (82 remaining)"
#    And user clicks "Add another pension fund (81 remaining)"
#    And user clicks "Add another pension fund (80 remaining)"
#    And user clicks "Add another pension fund (79 remaining)"
#    And user clicks "Add another pension fund (78 remaining)"
#    And user clicks "Add another pension fund (77 remaining)"
#    And user clicks "Add another pension fund (76 remaining)"
#    And user clicks "Add another pension fund (75 remaining)"
#    And user clicks "Add another pension fund (74 remaining)"
#    And user clicks "Add another pension fund (73 remaining)"
#    And user clicks "Add another pension fund (72 remaining)"
#    And user clicks "Add another pension fund (71 remaining)"
#    And user clicks "Add another pension fund (70 remaining)"
#    And user clicks "Add another pension fund (69 remaining)"
#    And user clicks "Add another pension fund (68 remaining)"
#    And user clicks "Add another pension fund (67 remaining)"
#    And user clicks "Add another pension fund (66 remaining)"
#    And user clicks "Add another pension fund (65 remaining)"
#    And user clicks "Add another pension fund (64 remaining)"
#    And user clicks "Add another pension fund (63 remaining)"
#    And user clicks "Add another pension fund (62 remaining)"
#    And user clicks "Add another pension fund (61 remaining)"
#    And user clicks "Add another pension fund (60 remaining)"
#    And user clicks "Add another pension fund (59 remaining)"
#    And user clicks "Add another pension fund (58 remaining)"
#    And user clicks "Add another pension fund (57 remaining)"
#    And user clicks "Add another pension fund (56 remaining)"
#    And user clicks "Add another pension fund (55 remaining)"
#    And user clicks "Add another pension fund (54 remaining)"
#    And user clicks "Add another pension fund (53 remaining)"
#    And user clicks "Add another pension fund (52 remaining)"
#    And user clicks "Add another pension fund (51 remaining)"
#    And user clicks "Add another pension fund (50 remaining)"
#    And user clicks "Add another pension fund (49 remaining)"
#    And user clicks "Add another pension fund (48 remaining)"
#    And user clicks "Add another pension fund (47 remaining)"
#    And user clicks "Add another pension fund (46 remaining)"
#    And user clicks "Add another pension fund (45 remaining)"
#    And user clicks "Add another pension fund (44 remaining)"
#    And user clicks "Add another pension fund (43 remaining)"
#    And user clicks "Add another pension fund (42 remaining)"
#    And user clicks "Add another pension fund (41 remaining)"
#    And user clicks "Add another pension fund (40 remaining)"
#    And user clicks "Add another pension fund (39 remaining)"
#    And user clicks "Add another pension fund (38 remaining)"
#    And user clicks "Add another pension fund (37 remaining)"
#    And user clicks "Add another pension fund (36 remaining)"
#    And user clicks "Add another pension fund (35 remaining)"
#    And user clicks "Add another pension fund (34 remaining)"
#    And user clicks "Add another pension fund (33 remaining)"
#    And user clicks "Add another pension fund (32 remaining)"
#    And user clicks "Add another pension fund (31 remaining)"
#    And user clicks "Add another pension fund (30 remaining)"
#    And user clicks "Add another pension fund (29 remaining)"
#    And user clicks "Add another pension fund (28 remaining)"
#    And user clicks "Add another pension fund (27 remaining)"
#    And user clicks "Add another pension fund (26 remaining)"
#    And user clicks "Add another pension fund (25 remaining)"
#    And user clicks "Add another pension fund (24 remaining)"
#    And user clicks "Add another pension fund (23 remaining)"
#    And user clicks "Add another pension fund (22 remaining)"
#    And user clicks "Add another pension fund (21 remaining)"
#    And user clicks "Add another pension fund (20 remaining)"
#    And user clicks "Add another pension fund (19 remaining)"
#    And user clicks "Add another pension fund (18 remaining)"
#    And user clicks "Add another pension fund (17 remaining)"
#    And user clicks "Add another pension fund (16 remaining)"
#    And user clicks "Add another pension fund (15 remaining)"
#    And user clicks "Add another pension fund (14 remaining)"
#    And user clicks "Add another pension fund (13 remaining)"
#    And user clicks "Add another pension fund (12 remaining)"
#    And user clicks "Add another pension fund (11 remaining)"
#    And user clicks "Add another pension fund (10 remaining)"
#    And user clicks "Add another pension fund (9 remaining)"
#    And user clicks "Add another pension fund (8 remaining)"
#    And user clicks "Add another pension fund (7 remaining)"
#    And user clicks "Add another pension fund (6 remaining)"
#    And user clicks "Add another pension fund (5 remaining)"
#    And user clicks "Add another pension fund (4 remaining)"
#    And user clicks "Add another pension fund (3 remaining)"
#    And user clicks "Add another pension fund (2 remaining)"
#    And user clicks "Add another pension fund (1 remaining)"
#    And user clicks "Add another pension fund (0 remaining)"
#    Then user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - Local Government Pension Scheme - Yes - Duplicates
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility7"
#    Then user is on the "Contract details" page
#    When user clicks link "Local Government Pension Scheme"
#    And user chooses "facilities_management_procurement_local_government_pension_scheme_true"
#    And user clicks "commit"
#    And user clicks link "Duplicate pension"
#    And user clicks "commit"
#
#
#  Scenario: FM - Detailed Search - Contract details
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "accessibility9"
#    Then user is on the "Contract details" page
#    When user clicks link "Expand all contract details"