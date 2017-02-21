Feature: Amazon Opening Orders

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Opening orders and validating mandatory details-Recent Orders

    #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"

    #Open orders
    Then I enter "Orders" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Recent Orders"
    Then I should see the text "Your Orders"
    Then I fire_event_onclick the "image" with "title" "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"
    Then I should see the text "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"

  Scenario: Opening orders and validating mandatory details-Open Orders

  #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"

  #Open orders
    Then I enter "Orders" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Open Orders"
    Then I should see the text "Your Orders"
    Then I should see the text "No orders or transactions found. Please select a different time period or order type."
    Then I flash the "element" with "id" "ordersContainer"

  Scenario: Opening orders and validating mandatory details-Digital Orders

  #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"

  #Open orders
    Then I enter "Orders" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Digital Orders"
    Then I should see the text "Your Orders"
    Then I should see the text "No orders or transactions found. Please select a different time period or order type."
    Then I flash the "element" with "id" "ordersContainer"