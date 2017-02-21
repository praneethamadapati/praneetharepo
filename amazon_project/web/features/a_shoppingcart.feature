Feature: Amazon Opening Shopping Cart

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Opening Shopping Cart and validating mandatory details

    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Open Shopping Cart
    Then I click the "link" with "id" "nav-cart"
    Then I should see the text "Your Shopping Cart is empty."
    Then I flash the "element" with "class" "sc-empty-cart"
    Then I should see the text "Saved for later (7 items)"
    Then I click the "input" with "name" "submit.move-to-cart.SOCOFRTALA4M5"
    Then I should see the text "Subtotal (1 item):"
    Then I click the "input" with "name" "submit.save-for-later.COCOFRTALA4M5"
    Then I should see the text "Subtotal (0 item):"
    Then I hover over the "link" with "text" "Hello, Praneetha"
#    Then I click the "link" with "text" "Not Praneetha? Sign Out"

