Feature: Amazon Log in
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Amazon Log in with Invalid credentials

    #Invalid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "Invalid Email"
    And I enter text for "Invalid Password"
    Then I click on "Sign In"
    Then I should see the text "We can not find an account with that email address"
    Then I flash on "Alert Content"

  Scenario: Amazon Log in with Valid credentials

    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    Then I flash on "Accounts & Lists"