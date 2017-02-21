Feature: Amazon Opening Orders

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Opening orders and validating mandatory details

    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"

    #Open orders
    Then I click the "link" with "text" "Orders"
    Then I should see the text "Your Orders"
    Then I should see the text "3 orders"
    Then I click the "link" with "text" "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"
    Then I should see the text "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"
    Then I flash the "element" with "id" "titleSection"
    Then I click the "link" with "text" "Orders"
    Then I click the "link" with "text" "Open Orders"
    Then I should see the text "Looking for an order? All of your orders have shipped."
    Then I flash the "element" with "id" "ordersContainer"
    Then I click the "link" with "text" "Digital Orders"
    Then I should see the text "0 orders"
    Then I flash the "element" with "id" "ordersContainer"
    Then I click the "link" with "text" "Cancelled Orders"
    Then I should see the text "1 cancelled order"
    Then I hover over the "link" with "text" "Hello, Praneetha"
#    Then I click the "link" with "text" "Not Praneetha? Sign Out"