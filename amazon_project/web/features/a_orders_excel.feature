Feature: Amazon Opening Orders

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Opening orders and validating mandatory details

    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"

    #Open orders
    Then I click on "Orders"
    Then I should see the text "Your Orders"
    Then I should see the text "2 orders"
    Then I click on "Iphone7 Case"
    Then I should see the text "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"
    Then I flash on "Title Section"
    Then I click on "Orders"
    Then I click on "Open Orders"
    Then I should see the text "Looking for an order? All of your orders have shipped."
    Then I flash on "Orders Container"
    Then I click on "Digital Orders"
    Then I should see the text "0 orders"
    Then I flash on "Orders Container"
    Then I click on "Cancelled Orders"
    Then I should see the text "1 cancelled order"
    Then I flash on "Accounts & Lists"