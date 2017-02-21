Feature: Amazon Opening Shopping Cart

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Opening Shopping Cart and validating mandatory details

    #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Open Shopping Cart
    Then I fire_event_onclick the "link" with "id" "nav-cart"
    Then I should see the text "Your Shopping Cart is empty."
    Then I flash the "element" with "class" "sc-empty-cart"
    Then I should see the text "Saved for later (7 items)"
    Then I fire_event_onclick the "input" with "name" "submit.move-to-cart.SOCOFRTALA4M5"
    Then I should see the text "Subtotal (1 item):"
    Then I fire_event_onclick the "input" with "name" "submit.save-for-later.COCOFRTALA4M5"
    Then I should see the text "Subtotal (0 item):"