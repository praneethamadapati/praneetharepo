Feature: Amazon Sell Feature

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Amazon Sell
    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"

    #User's Amazon Sell
    Then I click on "Sell"
    Then I flash on "Why Sell On Amazon?"
    Then I should see the text "Why sell on Amazon?"
    Then I click on "Start Selling"
    Then I flash on "Set Up Your Billing Method"
    Then I should see the text "Set up your billing method"
    Then I click on "Settings"
    Then I click on "LogOut"
    Then I flash on "Sign In To Your Account"
    Then I should see the text "Sign in to your account"