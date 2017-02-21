Feature: Amazon India
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Amazon India Featues
    #Amazon India
    Then I click on "Amazon India"
    Then I flash on "Amazon.in"
    Then I should see the text "Your Amazon.in"
    Then I flash on "Amazon.in Greeting"
    Then I should see the text "Welcome"
    Then I flash on "Amazon.in Sign In"
    Then I should see the text "Sign in for your best experience"
    Then I flash on "India's Largest Online Store"
    Then I should see the text "India's largest online store"
    Then I click on "Amazon.in Shopping Cart"
    Then I should see the text "Your Shopping Cart is empty."