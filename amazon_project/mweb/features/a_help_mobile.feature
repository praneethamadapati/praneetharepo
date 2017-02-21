Feature: Amazon Help

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the Help Option-Search for Pre-Orders
    #Amazon Help
    Then I enter "Help" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Help Topics"
    Then I flash the "element" with "text" "Hello. What can we help you with?"
    Then I should see the text "Hello. What can we help you with?"
    Then I flash the "element" with "text" "Find more solutions"
    Then I should see the text "Find more solutions"
    Then I enter "Pre-Orders" in the text field with "id" "helpsearch"
    Then I press enter
    Then I flash the "element" with "text" "Help Search Results"
    Then I should see the text "Help Search Results"

  Scenario: Checking the Help Option-Search for Wellsfargo
  #Amazon Help
    Then I enter "Help" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Help Topics"
    Then I enter "WellsFargo" in the text field with "id" "helpsearch"
    Then I press enter
    Then I flash the "element" with "text" "Search for WellsFargo in all departments."
    Then I should see the text "Search for WellsFargo in all departments."
    Then I flash the "element" with "text" "See results in Seller Help."
    Then I should see the text "See results in Seller Help."

  Scenario: Checking the Help Option-Different options offered
  #Amazon Help
    Then I enter "Help" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Help Topics"
    Then I should see the text "Your Orders"
    Then I should see the text "Returns & Refunds"
    Then I should see the text "Device Support"
    Then I should see the text "Manage Prime"
    Then I should see the text "Payments & Gift Cards"
    Then I should see the text "Account Settings"