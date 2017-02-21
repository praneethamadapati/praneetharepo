Feature: Amazon India
  Check page features along the way

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Amazon India Featues
    #Amazon India
    Then I fire_event_onclick on "Amazon.com Full Site"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Amazon India"
    Then I flash on "Amazon.in"
    Then I should see the text "Sign In"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick on "Amazon.in Full Site"
    Then I flash on "Amazon.in Greeting"
    Then I should see the text "Welcome"
    Then I flash on "Amazon.in Sign In"
    Then I should see the text "Sign in for your best experience"
    Then I flash on "India's Largest Online Store"
    Then I should see the text "India's largest online store"
    Then I fire_event_onclick on "Amazon.in Shopping Cart"
    Then I should see the text "Your Shopping Cart is empty."