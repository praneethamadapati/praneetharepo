Feature: Amazon Sell Feature

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Amazon Sell
    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"

    #User's Amazon Sell
    Then I click the "link" with "text" "Sell"
    Then I flash the "element" with "text" "Why sell on Amazon?"
    Then I should see the text "Why sell on Amazon?"
    Then I click the "link" with "text" "Start selling"
    Then I flash the "element" with "text" "Set up your billing method"
    Then I should see the text "Set up your billing method"
    Then I click the "element" with "text" "Settings"
    Then I click the "link" with "text" "Logout"
    Then I flash the "element" with "text" "Sign in to your account"
    Then I should see the text "Sign in to your account"