Feature: Amazon Help

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Help Option-Pre Orders
    #Amazon Help
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"
    Then I fire_event_onclick on "Your Account"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Help"
    Then I flash on "Help Text"
    Then I should see the text "Help"
    Then I should see the text "Praneetha, How can we help you?"
    Then I scroll to the center of the page
    Then I enter text for "Help Search"
    Then I press enter
    Then I flash on "Help Search Results"
    Then I should see the text "Help Search Results"


  Scenario: Checking the Help Option-Wellsfargo
  #Amazon Help
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"
    Then I fire_event_onclick on "Your Account"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Help"
    Then I flash on "Help Text"
    Then I should see the text "Help"
    Then I should see the text "Praneetha, How can we help you?"
    Then I scroll to the center of the page
    Then I enter text for "Help Search Other Item"
    Then I press enter
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Help"
    Then I should see the text "All Help Topics"