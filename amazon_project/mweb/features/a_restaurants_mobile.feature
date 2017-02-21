Feature: Amazon Restaurants

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the Amazon Restaurants Food Delivery
    #Amazon Restaurants
    Then I scroll to the bottom of the page
    Then I click on Amazon Restaurants
    Then I flash the "element" with "text" "Exclusively for Amazon Prime members"
    Then I should see the text "Exclusively for Amazon Prime members"
    Then I flash the "element" with "text" "See if we offer restaurant delivery in your area"
    Then I should see the text "See if we offer restaurant delivery in your area"
    Then I flash the "element" with "text" "Fast delivery"
    Then I should see the text "Fast delivery"
    Then I flash the "element" with "text" "$10 off your first order"
    Then I should see the text "$10 off your first order"
    Then I flash the "element" with "text" "Great selection"
    Then I should see the text "Great selection"
    Then I flash the "element" with "text" "Amazon Restaurants cities"
    Then I should see the text "Amazon Restaurants cities"
    Then I fire_event_onclick the "link" with "text" "Bay Area, CA"
    Then I flash the "element" with "text" "Restaurants in Bay Area, CA"
    Then I should see the text "Restaurants in Bay Area, CA"
    Then I fire_event_onclick the "element" with "text" "5 Sweets"
    Then I enter "94582" in the text field with "id" "hw-seo-page-zip-solicitation-input-zip"
    Then I press enter
    Then I flash the "element" with "text" "We are not in"
    Then I should see the text "We are not in"