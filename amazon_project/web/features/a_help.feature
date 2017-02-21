Feature: Amazon Help

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the Help Option
    #Amazon Help
    Then I click the "link" with "text" "Help"
    Then I flash the "element" with "text" "Hello. What can we help you with?"
    Then I should see the text "Hello. What can we help you with?"
    Then I flash the "element" with "text" "Browse Help Topics"
    Then I should see the text "Browse Help Topics"
    Then I flash the "element" with "text" "Find more solutions"
    Then I should see the text "Find more solutions"
    Then I enter "Pre-Orders" in the text field with "id" "helpsearch"
    Then I press enter
    Then I flash the "element" with "text" "Help Search Results"
    Then I should see the text "Help Search Results"
    Then I click the "link" with "text" "Help"
    Then I enter "WellsFargo" in the text field with "id" "helpsearch"
    Then I press enter
    Then I flash the "element" with "text" "Search for WellsFargo in all departments."
    Then I should see the text "Search for WellsFargo in all departments."
    Then I flash the "element" with "text" "See results in Seller Help."
    Then I should see the text "See results in Seller Help."
    Then I click the "link" with "text" "Help"
    Then I flash the "link" with "text" "Your Orders"
    Then I should see the text "Your Orders"
    Then I flash the "link" with "text" "Returns & Refunds"
    Then I should see the text "Returns & Refunds"
    Then I flash the "link" with "text" "Device Support"
    Then I should see the text "Device Support"
    Then I flash the "link" with "text" "Manage Prime"
    Then I should see the text "Manage Prime"
    Then I flash the "link" with "text" "Payments & Gift Cards"
    Then I should see the text "Payments & Gift Cards"
    Then I flash the "link" with "text" "Account Settings"
    Then I should see the text "Account Settings"