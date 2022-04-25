Feature: Management Consultancy Lots 1-9

    Background: login MC
        Given I am logged in to management consultancy

    Scenario: Lot1 View a single supplier's details
        Given I am on "Select the lot you need" page
        When I click on "Lot 1 - Business" option
        And I click on "Continue"
        Then I am on "Select the services you need" page
        When I check "Business case development"
        And I check "Operational planning and/or improvement"
        And I click on "Continue"
        Then I am on "Supplier results" page
        And I click on a mc supplier name
        And I should see supplier details header "MCF3 lot 1 - Business"
        And The following text is displayed:
            | Maximum day rates |
        And I should see header three "Contact details"
        And I click on "Back to start"
        And I am on "Find management consultants" page
        And I click on "Sign out"
        Then I am on the Management Consultancy start page

    Scenario: Lot1 Services selection/deselcting/checking error message
        Given I am on "Select the lot you need" page
        When I click on "Lot 1 - Business" option
        And I click on "Continue"
        Then I am on "Select the services you need" page
        When I check "Organisational review"
        And I check "Programme & project management"
        And I check "Risk, compliance and/or opportunity management"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click Back 
        Then I am on "Select the services you need" page
        And I should see the following selected services heading
        | 3 services selected |
        When I click on "Remove"
        Then I should see the following selected services heading
        | 2 services selected |
        When I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I click on "Continue"
        Then I should see the following error messages
            | Select the service or services you need |  

    Scenario: Lot1 No suppliers found page
        Given I am on "Select the lot you need" page
        When I click on "Lot 1 - Business" option
        And I click on "Continue"
        Then I am on "Select the services you need" page
        When I check "Business case development"
        And I check "Operational planning and/or improvement"
        When I check "Organisational review"
        And I check "Programme & project management"
        And I check "Risk, compliance and/or opportunity management"
        And I check "Value for money reviews."
        And I check "Business consultancy"
        And I check "Business continuity and/or disaster recovery planning"
        And I check "Business policy strategy and/or appraisal"
        And I check "Business processes"
        And I check "Change management"
        And I check "Development and/or review of policy"
        And I check "Digital, technology and cyber"
        And I check "Forecasting and/or planning"         
        And I should see the following selected services heading
        | 14 services selected |
        And I click on "Continue"
         Then I am on "No suppliers were found" page

    Scenario: Select the Lot you need error messsage display
        Given I am on "Select the lot you need" page
        And I click on "Continue"
        Then I should see the following error messages
            | Select the lot you need  |

    Scenario: Lot2 - Strategy and Policy - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 2 - Strategy and Policy" option
        And I click on "Continue"
        Then I am on "Select the services you need" page
        When I check "Business structure"
        And I check "Business case development"
        And I check "Business process re-engineering"
        And I check "Change management"
        And I check "Digital, technology and cyber"
        And I check "Policy"
        And I check "Regulatory advice"
        And I check "Social value"
        And I check "Strategic advice"
        And I should see the following selected services heading
        | 9 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Business structure"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page
        
Scenario: Lot 3 - Complex and Transformation - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 3 - Complex and Transformation" option
        And I click on "Continue"
        Then I am on "Select the services you need" page
        When I check "Business"
        And I check "Project and programme management"
        And I check "Strategy and/or policy"
        And I check "Supplier side services and delivery"
        And I check "Transformation management."
        And I check "Change management"
        And I check "Complex programmes"
        And I check "Digital, technology and cyber"
        And I check "Finance"
        And I check "HR"
        And I check "Organisation and operating model"
        And I check "Performance transformation"
        And I check "Procurement and/or supply chain"
        And I should see the following selected services heading
        | 13 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Business"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page

Scenario: Lot 4 - Finance - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 4 - Finance" option
        And I click on "Continue"
        Then I am on "Select the services you need" page
        When I check "Actuarial services"
        And I check "Financial due diligence"
        And I check "Economic analysis"
        And I check "Financial accounting and/or reporting"
        And I check "Financial performance review and viability studies"
        And I check "Financing public infrastructure projects and negotiations"
        And I check "Forecasting and budgeting"
        And I check "Foreign exchange"
        And I check "Investment, financial advice and market services"
        And I check "Mergers, acquisitions and divestment"
        And I check "Payment structure advice and risk"
        And I check "Asset management including valuation, sales and disposals"
        And I check "Pensions services"
        And I check "Policy impact assessments"
        And I check "Regulation and statutory requirements and/or reporting"
        And I check "Risk management"
        And I check "Tax including value added tax (VAT)"
        And I check "Business analysis"
        And I check "Capital fundraising, derivatives and hedging"
        And I check "Cash management"
        And I check "Corporate restructuring and flotation"
        And I check "Cost benefit reviews, studies, analysis and evaluation"
        And I check "Debt restructuring, management and insolvency"
        And I check "Developing and assessing project proposals"
        And I should see the following selected services heading
        | 24 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Pensions services"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page       

Scenario: Lot 5 - HR - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 5 - HR" option
        And I click on "Continue"
        Then I am on "Select the services you need" page
        When I check "Capability development"
        And I check "Training and development"
        And I check "Cultural transformation"
        And I check "Dispute management"
        And I check "Diversity and inclusion"
        And I check "Employee relations"
        And I check "HR functions, process and design"
        And I check "HR policy"
        And I check "Organisational design and/or workforce planning"
        And I check "Performance management"
        And I should see the following selected services heading
        | 10 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Training and development"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page   

Scenario: Lot 6 - Procurement and Supply Chain - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 6 - Procurement and Supply Chain" option
        And I click on "Continue"
        Then I am on "Select the services you need" page        
        When I check "Category management"
        And I check "Sourcing"
        And I check "Supplier management"
        And I check "Supply chain and logistics"
        And I check "Tender development and analysis"
        And I check "Commercial review"
        And I check "Contract management"
        And I check "Cost reduction"
        And I check "Digitalisation"
        And I check "Financial advice"
        And I check "Outsourcing and insourcing"
        And I check "P2P"
        And I check "Procurement process"
        And I should see the following selected services heading
        | 13 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Financial advice"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page      

Scenario: Lot 7 - Health, Social Care and Community - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 7 - Health, Social Care and Community" option
        And I click on "Continue"
        Then I am on "Select the services you need" page        
        When I check "Alternative delivery models"
        And I check "Healthcare operational review, improvement and/or modelling"
        And I check "Healthcare transformation, change and delivery"
        And I check "Housing"
        And I check "Mental healthcare"
        And I check "Planning for health, social care and community"
        And I check "Policing and security"
        And I check "Programme and project management"
        And I check "Public service improvement review"
        And I check "Regeneration"
        And I check "Safeguarding"
        And I check "Business case development"
        And I check "Social care services"
        And I check "Strategy and policy"
        And I check "Charity/third sector improvement review"
        And I check "Capability development"
        And I check "Clinical evaluations"
        And I check "Commissioning models"
        And I check "Community services"
        And I check "Digital, technology and cyber"
        And I check "Healthcare services"
        And I should see the following selected services heading
        | 21 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Business case development"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page   

Scenario: Lot 8 - Infrastructure including Transport - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 8 - Infrastructure including Transport" option
        And I click on "Continue"
        Then I am on "Select the services you need" page        
        When I check "Aviation"
        And I check "Communications and technology infrastructure"
        And I check "Highways"
        And I check "Public transport (including buses and parking)"
        And I check "Rail"
        And I check "Ports and shipping"
        And I check "Smart infrastructure"
        And I should see the following selected services heading
        | 7 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Public transport (including buses and parking)"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page      

Scenario: Lot 9 - Environmental Sustainability and Socio-economic Development - downloading supplier shortlist
        Given I am on "Select the lot you need" page
        When I click on "Lot 9 - Environmental Sustainability and Socio-economic Development" option
        And I click on "Continue"
        Then I am on "Select the services you need" page        
        When I check "Air quality"
        And I check "Feasibility studies and/or impact assessment"
        And I check "Monitoring environmental indicators"
        And I check "Natural capital"
        And I check "Natural resource management"
        And I check "Policy development and/or implementation"
        And I check "Pollution control (including noise)"
        And I check "Regulatory compliance"
        And I check "Risk management"
        And I check "Social value"
        And I check "Sustainability"
        And I check "Carbon management (including reporting)"
        And I check "Climate change adaptation and/or mitigation"
        And I check "Coastal"
        And I check "Contaminated land"
        And I check "Due diligence"
        And I check "Ecology and biodiversity"
        And I check "Environmental planning and protection"
        And I check "Equality analysis"
        And I should see the following selected services heading
        | 19 services selected |
        And I click on "Continue"
        Then I am on "No suppliers were found" page
        When I click Back
        And I am on "Select the services you need" page 
        And I click on "Remove all"
        Then I should see the following selected services heading
        | No services selected |
        When I check "Due diligence"
        And I click on "Continue"
        Then I am on "Supplier results" page
        When I click on "Download the supplier list"
        And I am on "Download the supplier shortlist" page
        #And I click on "Download supplier shortlist" 
        #And The excel file "shortlist_of_management_consultancy_suppliers" should download successfully
        And I click on "Back to start"
        Then I am on "Find management consultants" page



   