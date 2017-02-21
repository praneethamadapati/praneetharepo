Feature: Amazon Returns and Replacements

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Returns and Replacement function

    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

    #Returns & Replacements
    Then I enter text for "Returns"
    Then I press enter
    Then I should see the text "Returns Center - Return Purchased Items or Gifts & Track Your Returns"
    Then I flash on "Returns Center Text"
    Then I fire_event_onclick on "Returns Center"
    Then I fire_event_onclick on "Iphone7 Case Image"
    Then I should see the text "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"
    Then I flash on "Title Section"