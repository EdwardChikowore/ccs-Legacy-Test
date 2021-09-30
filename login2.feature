Feature: Login ls

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
         And I click on "Download supplier shortlist"
         And I click on "Back to start"
         And I am on "Find legal services for the wider public sector" page
         And I click on "Sign out"
         Then I am on the legal services start page

    Scenario: Lot 2 - Full-service firms
        Given I am on "Do you work for central government?" page
        And I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page 
        #And I click on the summary text "Lot 2 Legal Servives"
        #And the dropdown list displays the following

        #And I click on the summary text "Lot 2 Legal Services"
        #And the dropdown list is retracted
        #When I dont select a lot and click on "Continue"
        #Then an error message is displayed in the box titled "There is a problem" 
        And I click on "Lot 2 - Full-service firms" option
        And I click on "Continue"        
        And I am on "Lot 2 - Full-service firms" page
       
        #When I dont select a jurisdiction and click on "Continue"
        #Then an error message is displayed in the box titled "There is a problem"
        And I click on "England and Wales" option
        And I click on "Continue"
        And I am on "Select the legal services you need" page
        
        #When I dont select a legal service and click on "Continue"
        #Then an error message is displayed in the box titled "There is a problem"
        
        And I click on Contracts services
        And I click on "Continue"
        And I am on "Supplier results" page

        #And I click on "Download the supplier list"
        #And I am on "Download the supplier shortlist" page
        #And I click on "Download the supplier list"
        #And the Shortlist is downloaded
        #And I click on "Back to start"
        #And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page


    Scenario: Lot 3 - Property and construction
        Given I am on "Do you work for central government?" page
        And I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page        
        And I click on "Lot 3 - Property and construction" option
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
        And I click on "Download supplier shortlist"
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page

        Scenario: Buyer selects Yes for Central gvt No for fees over £20,000
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page
        And I click on "No" option
        And I click on "Continue"
        And I am on "Sorry, this panel isn't suitable for you" page
        And I click on "Back to start"
        And I am on "Find legal services for the wider public sector" page
        And I click on "Sign out"
        Then I am on the legal services start page    


