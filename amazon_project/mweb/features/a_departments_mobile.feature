Feature: Amazon Departments

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Exploring Departments-Amazon Fresh

    Then I flash the "link" with "id" "nav-link-shopall"
    Then I fire_event_onclick the "link" with "id" "nav-link-shopall"
    Then I flash the "element" with "text" "Amazon Video"
    Then I should see the text "Amazon Video"
    Then I should see the text "AmazonFresh"
    Then I should see the text "All AmazonFresh"
    Then I reload the page
    Then I fire_event_onclick the "link" with "text" "All AmazonFresh"
    Then I enter "94582" in the text field with "id" "zip-input"
    Then I fire_event_onclick the "element" with "id" "continue-shop-button"
    Then I sleep
    Then I reload the page
    Then I sleep
    Then I fire_event_onclick the "link" with "text" "Past Purchases"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Past Purchases"
    Then I should see the text "It looks like you haven’t received any deliveries yet."

  Scenario: Exploring Departments-Kindle

    Then I flash the "element" with "id" "nav-link-shopall"
    Then I fire_event_onclick the "element" with "id" "nav-link-shopall"
    Then I flash the "element" with "text" "Amazon Video"
    Then I should see the text "Amazon Video"
    Then I should see the text "AmazonFresh"
    Then I should see the text "All AmazonFresh"
    Then I scroll to the center of the page
    Then I should see the text "Kindle E-readers & Books"
    Then I fire_event_onclick the "link" with "text" "Kindle"
    Then I flash the "element" with "id" "titleSection"
    Then I flash the "element" with "class" "kcc-title-container"