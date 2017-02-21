Feature: User's Amazon Account
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking User's Amazon Account
    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"

    #User's amazon account
    Then I click on "User's Amazon Account"
    Then I flash on "Amazon Video - TV"
    Then I should see the text "Amazon Video - TV"
    Then I flash on "Amazon Video - Movies"
    Then I should see the text "Amazon Video - Movies"
    Then I sleep
    Then I scroll to the center of the page
    Then I flash on "More To Explore"
    Then I should see the text "More to Explore"
    Then I should see the text "New Releases in Appstore for Android"
    Then I flash on "Recently Viewed & Featured Recommendations"
    Then I should see the text "Your Recently Viewed Items and Featured Recommendations"
    Then I flash on "You Viewed"
    Then I should see the text "You viewed"