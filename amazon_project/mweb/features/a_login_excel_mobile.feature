Feature: Amazon Log in
  Check page features along the way

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Amazon Log in with Invalid credentials

    #Invalid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "Invalid Email"
    And I enter text for "Invalid Password"
    Then I fire_event_onclick on "Sign In"
    Then I should see the text "We can not find an account with that email address"
    Then I flash on "Alert Content"

  Scenario: Amazon Log in with Valid credentials

    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"