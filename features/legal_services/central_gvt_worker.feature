Feature: Do you work for Central Government Yes Options

    Background: login ls
        Given I am logged in to legal services

    Scenario: Buyer selects Yes for Central gvt and yes fees under £20,000 - England Regions     
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page
        And I click on "Yes" option
        And I click on "Continue"        
        Then I am on "Select the legal services you need" page
        And I check "Litigation / dispute resolution"
        And I check "Property and construction"
        And I click on "Continue"
        Then I am on "Select the regions where you need legal services" page
        When I check "North East"
        And I check "North West"
        And I check "Yorkshire and The Humber"
        And I check "East Midlands"
        And I check "West Midlands" 
        And I check "East of England" 
        And I check "London" 
        And I check "South East" 
        And I check "South West" 
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on a supplier name
        And I should see supplier details header "Lot 1 - Regional service provision"
        And The following text is displayed:
            | Rates |
        And I should see header three "Contact details"
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page

    Scenario: Buyer selects Yes for Central gvt and yes fees under £20,000 - Wales Region    
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page
        And I click on "Yes" option
        And I click on "Continue"        
        Then I am on "Select the legal services you need" page
        And I check "Litigation / dispute resolution"
        And I check "Property and construction"
        And I click on "Continue"
        Then I am on "Select the regions where you need legal services" page
        When I check "Wales"
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        And I click on "Download supplier shortlist" 
        And The excel file "Shortlist of WPS Legal Services Suppliers" should download successfully
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page

    Scenario: Buyer selects Yes for Central gvt and yes fees under £20,000 - Scotland Region     
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page
        And I click on "Yes" option
        And I click on "Continue"        
        Then I am on "Select the legal services you need" page
        And I check "Litigation / dispute resolution"
        And I check "Property and construction"
        And I click on "Continue"
        Then I am on "Select the regions where you need legal services" page
        When I check "Scotland"
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        And I click on "Download supplier shortlist" 
        And The excel file "Shortlist of WPS Legal Services Suppliers" should download successfully
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page

    Scenario: Buyer selects Yes for Central gvt and yes fees under £20,000 - Northern Ireland Region     
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page
        And I click on "Yes" option
        And I click on "Continue"        
        Then I am on "Select the legal services you need" page
        And I check "Litigation / dispute resolution"
        And I check "Property and construction"
        And I click on "Continue"
        Then I am on "Select the regions where you need legal services" page
        When I check "Northern Ireland"
        And I click on "Continue"
        And I am on "Supplier results" page
        And I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        And I click on "Download supplier shortlist" 
        And The excel file "Shortlist of WPS Legal Services Suppliers" should download successfully
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page

    Scenario: Buyer selects Yes for Central gvt No for fees over £20,000
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page        
        When I click on "No" option
        And I click on "Continue"
        And I am on "Sorry, this panel isn't suitable for you" page
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page
    
    Scenario: Error messages for fees under £20,000, Legal services & regions page
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page
        And I click on "Continue"
        Then I should see the following error messages
            | Select yes if the fees will be under £20,000  |
        When I click on "Yes" option
        And I click on "Continue"        
        And I am on "Select the legal services you need" page
        And I click on "Continue"
        Then I should see the following error messages
            | Select at least one legal service |
        When I check "Litigation / dispute resolution" 
        And I click on "Continue"
        And I am on "Select the regions where you need legal services" page
        And I click on "Continue"
        Then I should see the following error messages
            | Select the region or regions you require the services in |