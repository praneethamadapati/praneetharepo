Feature: Amazon User's Garage

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the User's Garage and it's functions

    #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I fire_event_onclick the "element" with "text" "Hello, Praneetha"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Your Garage"
    Then I fire_event_onclick the "element" with "text" "Add your first vehicle"
    Then I fire_event_onclick the "input" with "text" "Motorcycles"
    Then I flash the "element" with "text" "Choose a make"
    Then I should see the text "Choose a make"
    Then I fire_event_onclick the "link" with "data-make_id" "59"
    Then I fire_event_onclick the "link" with "data-year" "2016"
    Then I should see the text "2016 Honda CMX250C Rebel"
    Then I flash the "element" with "text" "2016 Honda CMX250C Rebel"
    Then I fire_event_onclick the "link" with "text" "REMOVE THIS VEHICLE"
    Then I fire_event_onclick the "link" with "value" "Yes"