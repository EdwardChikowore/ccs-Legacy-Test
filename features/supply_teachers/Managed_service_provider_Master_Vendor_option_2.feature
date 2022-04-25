Feature: An agency to manage all my school's needs; a 'managed service provider - Master Vendor' option2
    
    Background: login st 
    Given I am logged in to supply teachers

    Scenario: User selects option An agency to manage all my school's needs; a 'managed service provider - Master Vendor'
        Given I am on "What is your school looking for?" page
        And I click on "An agency to manage all my school's needs; a 'managed service provider - Master Vendor'" option
        And I click on "Continue"

        Then I am on "Master vendor managed service providers" page