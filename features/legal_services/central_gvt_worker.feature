Feature: Do you work for Central Government Yes Options

    Background: login ls

        Given I am on the legal services start page
        And I click on "Start now"
        And I am on "Sign in to your legal services buyer account" page
        Then I sign in to the buyer account
        Then I am logged in successfully

    Scenario: Buyer selects Yes for Central gvt and yes fees over £20,000       
        Given I am on "Do you work for central government?" page
        And I click on "Yes" option
        And I click on "Continue"
        And I am on "Will the fees be under £20,000 per matter?" page
        And I click on "Yes" option
        And I click on "Continue"        
        Then I am on "Select the legal services you need" page
              
        When I click on Litigation / dispute resolution 
        And I click on Property and construction
        And I click on "Continue"
        Then I am on "Select the regions where you need legal services" page

    # Scenario check region selection
        When I click on North East region
        And I click on North West region
        And I click on Yorkshire and The Humber region
        And I click on East Midlands region
        And I click on West Midlands region
        And I click on East of England region
        #Then I should see text "6 regions selected" in the region selection basket

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
    #    | There is a problem |  
         | Select yes if the fees will be under £20,000  |

        When I click on "Yes" option
        And I click on "Continue"        
        And I am on "Select the legal services you need" page
        And I click on "Continue"
        Then I should see the following error messages
    #    | There is a problem |  
         | Select at least one legal service |

        When I click on Litigation / dispute resolution 
        And I click on "Continue"
        And I am on "Select the regions where you need legal services" page
        And I click on "Continue"
        Then I should see the following error messages
    #    | There is a problem |  
         | Select the region or regions you require the services in |