Feature: Amazon Sell Feature

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Amazon Sell
    #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"

    #User's Amazon Sell
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Sell on Amazon"
    Then I should see the text "Start Selling on Amazon Today"
    Then I fire_event_onclick the "link" with "text" "Start selling"
    Then I flash the "element" with "text" "Register and Start Selling Today"
    Then I should see the text "Register and Start Selling Today"
    Then I fire_event_onclick the "button" with "name" "Continue"
    Then I flash the "element" with "text" "Please enter your Legal Name to continue."
    Then I should see the text "Please enter your Legal Name to continue."
    Then I flash the "element" with "text" "You must accept the Amazon Services Business Solutions Agreement."
    Then I should see the text "You must accept the Amazon Services Business Solutions Agreement."