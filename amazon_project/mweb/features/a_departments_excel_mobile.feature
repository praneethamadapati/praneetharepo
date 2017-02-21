Feature: Amazon Departments

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Exploring Departments-Amazon Fresh
    Then I flash on "Departments"
    Then I fire_event_onclick on "Departments"
    Then I flash on "Earth's Biggest Selection"
    Then I should see the text "Earth's biggest selection"
    Then I should see the text "AmazonFresh"
    Then I fire_event_onclick on "Amazon Fresh"
    Then I fire_event_onclick on "All Amazon Fresh"
    Then I enter text for "Zipcode"
    Then I fire_event_onclick on "Continue Shopping"
    Then I debug
    Then I fire_event_onclick on "Fresh"
    Then I fire_event_onclick on "Past Purchases"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I should see the text "Past Purchases"
    Then I flash on "Past Purchases Text"
    Then I should see the text "It looks like you haven’t received any deliveries yet."
    Then I flash on "No Deliveries Yet Text"
    Then I fire_event_onclick on "Fresh"
    Then I fire_event_onclick on "Fresh Deals"
    Then I flash on "Fresh Deals Text"
    Then I should see the text "Fresh Deals"

  Scenario: Exploring Departments-Kindle
    Then I flash on "Departments"
    Then I fire_event_onclick on "Departments"
    Then I flash on "Earth's Biggest Selection"
    Then I should see the text "Earth's biggest selection"
    Then I fire_event_onclick on "Kindle"
    Then I fire_event_onclick on "Kindle2"
    Then I flash on "Title"
    Then I flash on "Compare Kindle E-Readers"