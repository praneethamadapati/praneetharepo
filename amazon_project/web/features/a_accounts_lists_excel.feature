Feature: Amazon Accounts and Lists

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Amazon Accounts and Lists
    #Accounts and Lists
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I click on "Accounts & Lists"
    Then I click on "Gifts Organizer"
    Then I flash on "Adding Friends"
    Then I click on "Your Lists"
    Then I enter text for "Search Items"
    Then I press enter
    Then I flash on "Search Results for Wish Lists"
    Then I click on "Gift Finder"
    Then I flash on "Gift Finder Text"
    Then I flash on "Who are you Shopping for?"
    Then I click on "Babies"
    Then I click on "Friends & Family Gifting"
    Then I flash on "Adding Friends"
    Then I click on "Kid's Birthdays"
    Then I click on "Wedding Registry"
    Then I enter text for "Wedding Registry First Name"
    Then I enter text for "Wedding Registry Last Name"
    Then I click on "Wedding Registry Submit"
    Then I select "Wedding Registry Month" from list
    Then I select "Wedding Registry State" from list
    Then I flash on "Wedding Registry Not Found"
    Then I flash on "Find A Registry"

