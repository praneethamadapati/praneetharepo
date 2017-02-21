Feature: Amazon Restaurants

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Amazon Restaurants Food Delivery
    #Amazon Restaurants
    Then I fire_event_onclick on "Amazon.com Full Site"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Restaurants"
    Then I flash on "Exclusively For Amazon Prime Members"
    Then I should see the text "Exclusively for Amazon Prime members"
    Then I flash on "Checking Restaurant Delivery Available In Your Area"
    Then I should see the text "See if we offer restaurant delivery in your area"
    Then I flash on "Fast Delivery"
    Then I should see the text "Fast delivery"
    Then I flash on "Offer On Your First Order"
    Then I should see the text "$10 off your first order"
    Then I flash on "Great Selection"
    Then I should see the text "Great selection"
    Then I flash on "Amazon Restaurant Cities"
    Then I should see the text "Amazon Restaurants cities"
    Then I fire_event_onclick on "Bay Area Restaurants"
    Then I flash on "Restaurants In Bay Area, CA"
    Then I should see the text "Restaurants in Bay Area, CA"
    Then I fire_event_onclick on "360 Gourmet Burritos"
    Then I enter text for "Area Zipcode"
    Then I press enter
    Then I flash on "We Are Not In Your Area"
    Then I should see the text "We are not in"