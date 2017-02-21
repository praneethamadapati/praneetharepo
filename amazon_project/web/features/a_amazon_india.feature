Feature: Amazon India
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the Amazon India Featues
    #Amazon India
    Then I click the "link" with "text" "India"
    Then I flash the "element" with "text" "Your Amazon.in"
    Then I should see the text "Your Amazon.in"
    Then I flash the "element" with "text" "Welcome"
    Then I should see the text "Welcome"
    Then I flash the "element" with "text" "Sign in for your best experience"
    Then I should see the text "Sign in for your best experience"
    Then I flash the "element" with "text" "India's largest online store"
    Then I should see the text "India's largest online store"
    Then I click the "link" with "id" "nav-cart"
    Then I should see the text "Your Shopping Cart is empty."