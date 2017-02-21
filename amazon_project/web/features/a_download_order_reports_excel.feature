Feature: Amazon Download Order Reports

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking Amazon Download Order Reports feature with start date less than end start
    #Download Order Reports
    Then I should see the text "Hello. Sign in"
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    Then I click on "Accounts & Lists"
    Then I click on "Download Order Reports"
    Then I select "Report Type1" from list
    Then I select "Report Month Start1" from list
    Then I select "Report Day Start1" from list
    Then I select "Report Year Start1" from list
    Then I select "Report Month End1" from list
    Then I select "Report Day End1" from list
    Then I select "Report Year End1" from list
    Then I enter text for "Report Name1"
    Then I click on "Report Confirm"
    Then I sleep
#    Then I reload the page
    Then I sleep
    Then I should see the text "Your Reports"
    Then I flash on "Your Reports"
    Then I click on "Delete Report"
    Then I should see the text "You have no submitted reports."

  Scenario: Checking Amazon Download Order Reports feature with start date more than end start
  #Download Order Reports
    Then I should see the text "Hello. Sign in"
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    Then I click on "Accounts & Lists"
    Then I click on "Download Order Reports"
    Then I select "Report Type1" from list
    Then I select "Report Month Start1" from list
    Then I select "Report Day Start1" from list
    Then I select "Report Year Start1" from list
    Then I select "Report Month End1" from list
    Then I select "Report Day End1" from list
    Then I select "Report Year End1" from list
    Then I enter text for "Report Name1"
    Then I click on "Report Confirm"
    Then I sleep
    Then I reload the page
    Then I sleep
    Then I should see the text "Start date must be in the past"
    Then I flash on "Start Date Must Be In The Past"
    Then I should see the text "You have no submitted reports."