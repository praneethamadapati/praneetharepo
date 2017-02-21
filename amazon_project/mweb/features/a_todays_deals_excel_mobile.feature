Feature: Amazon Today's Deals

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Opening deals for the day-Lightning Deals

    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

    #Open Today's Deals
    Then I fire_event_onclick on departments
    Then I fire_event_onclick on "Deals"
    Then I should see the text "Today's Deals"
    Then I scroll to the center of the page
    Then I debug
    Then I fire_event_onclick on "Lightning Deals"
    Then I should see the text "Lightning Deals"

  Scenario: Opening deals for the day-Savings & Sales

      #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

      #Open Today's Deals
    Then I fire_event_onclick on departments
    Then I fire_event_onclick on "Deals"
    Then I should see the text "Today's Deals"
    Then I scroll to the center of the page
    Then I sleep
    Then I fire_event_onclick on "Savings & Sales"
    Then I should see the text "Savings & Sales"