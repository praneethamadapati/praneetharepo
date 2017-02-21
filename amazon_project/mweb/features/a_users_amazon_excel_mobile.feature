Feature: User's Amazon Account
  Check page features along the way

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking User's Amazon Account
    o
    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

    #User's amazon account
    Then I fire_event_onclick on "Your Account"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "User's Amazon Account"
    Then I should see the text "Recommended for You"
    Then I scroll to the center of the page
    Then I wait for "3" seconds
    Then I scroll to the bottom of the page
    Then I wait for "3" seconds