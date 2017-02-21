Feature: Amazon Careers

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Amazon Career Opportunities
    #Amazon Careers
    Then I fire_event_onclick on "Amazon.com Full Site"
    Then I scroll to the bottom of the page
    Then I flash on "Get To Know Us"
    Then I fire_event_onclick on "Careers"
    Then I should see the text "Find jobs"
    Then I should see the text "Find jobs"
    Then I flash on "Menu"
    Then I enter text for "Search Jobs"
    Then I press enter
    Then I enter text for "Location"
    Then I enter text for "Job Category"
    Then I enter text for "Teams"
    Then I enter text for "Search Different Job"
    Then I press enter
    Then I fire_event_onclick on "Menu"
    Then I fire_event_onclick on "Amazon Culture & Benefits"
    Then I flash on "We Pioneer"
    Then I should see the text "we pioneer"
    Then I scroll to the center of the page
    Then I flash on "Customer Centric Company"
    Then I should see the text "Earth's most customer-centric company"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Leadership Principles"
    Then I fire_event_onclick on "Pioneers"
    Then I fire_event_onclick on "Diversity"
    Then I flash on "Diversity At Amazon"
    Then I should see the text "Diversity at Amazon"
    Then I fire_event_onclick on "Benefits"
    Then I flash on "Benefits Text"
    Then I should see the text "Benefits"
    Then I flash on "Financial Security"
    Then I should see the text "Financial security"
    Then I flash on "Health Care"
    Then I should see the text "Health care"
    Then I flash on "Employee Assistance"
    Then I should see the text "Employee assistance"
    Then I flash on "TimeOff"
    Then I should see the text "Timeoff"
    Then I flash on "Employee Stock"
    Then I should see the text "Employee stock"
    Then I fire_event_onclick on "More Employee Benefits"
    Then I flash on "Health"
    Then I scroll to the center of the page
    Then I flash on "Finance"
    Then I flash on "Employee Assistance Program"
    Then I flash on "TimeOff"
    Then I flash on "Stock"