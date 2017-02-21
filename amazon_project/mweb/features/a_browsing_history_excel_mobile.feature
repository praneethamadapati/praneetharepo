Feature: Amazon Browsing History

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Browsing History

    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"
    #Browsing History
    Then I fire_event_onclick on "Your Account"
    Then I scroll to the bottom of the page
    Then I sleep
    Then I fire_event_onclick on "Browsing History"
    Then I should see the text "Browsing history"
    Then I flash on "Your Browsing History Text"
    Then I scroll to the center of the page
    Then I sleep
    Then I scroll to the bottom of the page
    Then I sleep
    Then I scroll to the top of the page
    Then I sleep