Feature: Login to legal services

     Background: login ls

        Given I am on the legal services start page
        And I click on "Start now"
        And I am on "Sign in to your legal services buyer account" page
        Then I sign in to the buyer account
        Then I am logged in successfully

        Scenario: error messages not CG worker (Lots1-4) 
        Given I am on "Do you work for central government?" page
        And I click on "Continue"
        Then I should see the following error messages
         #| There is a problem |  
         | Select yes if you work for central government |

      When I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page
        And I click on "Continue"
        Then I should see the following error messages
    #    | There is a problem |  
         | Select the lot you need |

      #And I click on the summary text "Lot 2 Legal Servives"
        #And the dropdown list of servies for the lot is displayed
        #And I click on the summary text "Lot 2 Legal Services"
        #And the dropdown list is retracted

               # And I click on a supplier name
       # And I should see supplier details header "Lot 1 - Regional service provision"
        #Then I am on "Lot 1 - Regional service provision" page
        # And The following text is displayed:
        #     | Rates |
        # And I should see header three "Contact details"
        # And I should see the rates table
        # | Position              | 
        # | Hourly                | 
        # | Daily     | 
        # | Monthly   | 
        # | Managing Practitioner  | 
        # | Senior Practitioner  | 
        # | Solicitor/Associate  | 
        # | Legal Support Practitioner/Executive | 

                # And I should see the rates table
        # | Position              | 
        # | Hourly                | 
        # | Daily     | 
        # | Monthly   | 
        # | Managing Practitioner  | 
        # | Senior Practitioner  | 
        # | Solicitor/Associate  | 
        # | Legal Support Practitioner/Executive | 



        # And I click on "Download the supplier list"
        # And I am on "Download the supplier shortlist" page
        # And I click on "Download supplier shortlist"