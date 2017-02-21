Feature: Amazon Accounts and Lists

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Amazon Accounts and Lists-Wedding Registry
    #Accounts and Lists
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"
    Then I enter text for "Your Lists Mobile"
    Then I press enter
    Then I fire_event_onclick on "Your Lists & Registries"
    Then I should see the text "List & Registry"
    Then I fire_event_onclick on "Wish List"
    Then I flash on "Items"
    Then I fire_event_onclick on "Wish List Back"
    Then I fire_event_onclick on "Shopping List Mobile"
    Then I flash on "Items"
    Then I fire_event_onclick on "Shopping List Back"
    Then I fire_event_onclick on "Find A List Or Registry"
    Then I should see the text "Find a List or Registry"
    Then I should see the text "Search for"
    Then I flash on "Search For Text"
    Then I select "List Type" from list
    Then I enter text for "Wedding Registry First Name"
    Then I enter text for "Wedding Registry Last Name"
    Then I fire_event_onclick on "Submit"
    Then I should see the text "Find a List or Registry"
    Then I flash on "Find A List Or Registry Text"

  Scenario: Amazon Accounts and Lists-Baby Registry
  #Accounts and Lists
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"
    Then I enter text for "Your Lists Mobile"
    Then I press enter
    Then I fire_event_onclick on "Your Lists & Registries"
    Then I should see the text "List & Registry"
    Then I fire_event_onclick on "Find A List Or Registry"
    Then I should see the text "Find a List or Registry"
    Then I should see the text "Search for"
    Then I flash on "Search For Text"
    Then I select "List Type 1" from list
    Then I enter text for "Baby Registry First Name"
    Then I enter text for "Baby Registry Last Name"
    Then I fire_event_onclick on "Submit"
    Then I should see the text "Find a List or Registry"
    Then I flash on "Find A List Or Registry Text"