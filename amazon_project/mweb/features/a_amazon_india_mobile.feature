Feature: Amazon India
  Check page features along the way

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the Amazon India Featues
    #Amazon India
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "India"
    Then I scroll to the bottom of the page
    Then I flash the "element" with "text" "Your Amazon.in"
    Then I should see the text "Your Amazon.in"
    Then I flash the "element" with "id" "nav-ftr-auth"
    Then I should see the text "Already a customer?"
    Then I scroll to the top of the page
    Then I fire_event_onclick the "link" with "id" "nav-button-cart"
    Then I should see the text "Your Shopping Cart is empty."