Feature: Amazon Sell Feature

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Amazon Sell
    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

    #User's Amazon Sell
    Then I fire_event_onclick on "Your Account"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Sell"
    Then I fire_event_onclick on "Start Selling"
    Then I flash on "Register & Start Selling Today"
    Then I should see the text "Register and Start Selling Today"
    Then I fire_event_onclick on "Continue Button"
    Then I should see the text "Please enter your Legal Name to continue."
    Then I should see the text "You must accept the Amazon Services Business Solutions Agreement."