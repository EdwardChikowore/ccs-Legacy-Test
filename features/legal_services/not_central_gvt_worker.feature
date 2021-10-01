Feature: Do you work for Central Government Lots1-4

    Background: login ls
    Given I am logged in to legal services

    Scenario: Lot1 Regional service provision
        Given I am on "Do you work for central government?" page
        And I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page        
        And I click on "Lot 1 - Regional service provision" option
        And I click on "Continue"
        And I am on "Select the legal services you need" page    
        And I check "Child law"
        And I check "Court of protection"
        And I check "Debt recovery"
        And I check "Employment"
        And I click on "Continue"
        Then I am on "Select the regions where you need legal services" page
        When I click on North East region
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
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
        When I click on "Continue"
        Then I should see the following error messages
         | Select the jurisdiction you need |
        And I click on "England and Wales" option
        And I click on "Continue"
        And I am on "Select the legal services you need" page
        And I check "Contracts"
        And I check "Projects"
        And I check "Tax"
        Then I should see the following selected services heading
        | 3 services selected |
        When I click on "Remove"
        Then I should see the following selected services heading
        | 2 services selected |
        When I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        And I check "Public procurement"
        And I check "Property, real estate & construction"
        And I check "Public international law"   
        And I check "Restructuring and insolvency"
        And I check "Telecommunications"
        And I check "The law of international trade, investment and regulation"
        And I check "Transport law (excluding rail)"
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Sign out"
        Then I am on the legal services start page

    Scenario: Lot 3 - Property and construction
        Given I am on "Do you work for central government?" page
        When I click on "Continue"
        Then I should see the following error messages
        | Select yes if you work for central government |
        When I click on "No" option
        And I click on "Continue"
        Then I am on "Select the lot you need" page 
        When I click on "Continue"
        Then I should see the following error messages
        | Select the lot you need |
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
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page
    