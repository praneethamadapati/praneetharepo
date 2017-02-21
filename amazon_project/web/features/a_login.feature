Feature: Amazon Log in
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

      #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Amazon Log in with Invalid credentials

    #Invalid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapati@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "We can not find an account with that email address"
    Then I flash the "element" with "class" "a-alert-content"

  Scenario: Amazon Log in with Valid credentials

    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I hover over the "link" with "text" "Hello, Praneetha"
#    Then I click the "link" with "id" "nav-item-signout"
