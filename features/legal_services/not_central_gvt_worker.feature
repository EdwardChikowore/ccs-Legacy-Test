Feature: Do you work for Central Government Lots1-4

    Background: login ls

        Given I am on the legal services start page
        And I click on "Start now"
        And I am on "Sign in to your legal services buyer account" page
        Then I sign in to the buyer account
        Then I am logged in successfully

    Scenario: Lot1 Regional service provision
        Given I am on "Do you work for central government?" page
        And I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page        
        And I click on "Lot 1 - Regional service provision" option
        And I click on "Continue"
        And I am on "Select the legal services you need" page    
        And I click on child law services
        And I click on court of protection services
        And I click on Debt recovery services
        And I click on Employment services
        And I click on "Continue"
        Then I am on "Select the regions where you need legal services" page

        When I click on North East region
         And I click on "Continue"
         And I am on "Supplier results" page
         And I click on "Download the supplier list"
         And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist"
         And I click on "Back to start"
         And I am on "Find legal services for the wider public sector" page
         And I click on "Sign out"
         Then I am on the legal services start page

    Scenario: Lot 2 - Full-service firms
        Given I am on "Do you work for central government?" page
        And I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page 
        And I click on "Lot 2 - Full-service firms" option
        And I click on "Continue"        
        Then I am on "Lot 2 - Full-service firms" page
       
        #Clicking on "Continue" without selecting a "Jurisdiction" option
        When I click on "Continue"
        Then I should see the following error messages
         #| There is a problem |  
         | Select the jurisdiction you need |

        #Selecting "England and Wales" Jurisdiction option and continuing with the journey
        And I click on "England and Wales" option
        And I click on "Continue"
        And I am on "Select the legal services you need" page
        #Selecting 3 services
        And I click on Contracts services
        And I click on Projects services
        And I click on Tax services
        Then I should see the following selected services heading
        | 3 services selected |
        #Removing 1 service
        When I click on "Remove"
        Then I should see the following selected services heading
        | 2 services selected |
        #Removing all services
        When I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        #Selecting a service and continuing to Supplier results
        And I click on Public procurement services
    # And I click on Property, real estate & construction services
    # And I click on Public international law services    
    # And I click on Restructuring and insolvency services
    # And I click on Telecommunications services
    # And I click on The law of international trade, investment and regulation services
    # And I click on Transport law (excluding rail) services

        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Sign out"
        Then I am on the legal services start page

    Scenario: Lot 3 - Property and construction
        Given I am on "Do you work for central government?" page
        #Clicking on "Continue" without selecting a Y/N option
        When I click on "Continue"
        Then I should see the following error messages
         #| There is a problem |  
         | Select yes if you work for central government |

        #Selecting "No" option and continuing with the journey 
        When I click on "No" option
        And I click on "Continue"
        Then I am on "Select the lot you need" page 
        #Clicking on "Continue" without selecting a "lot" option
        When I click on "Continue"
        Then I should see the following error messages
    #    | There is a problem |  
         | Select the lot you need |

        #Selecting "lot3" option and continuing with the journey
        When I click on "Lot 3 - Property and construction" option
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        And I click on "Download supplier shortlist"
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page        
        And I click on "Sign out"
        Then I am on the legal services start page

    Scenario: Lot 4 - Transport rail       
        Given I am on "Do you work for central government?" page
        And I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page
        And I click on "Lot 4 - Transport rail" option
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
    #    And I click on "Download supplier shortlist"
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page
    