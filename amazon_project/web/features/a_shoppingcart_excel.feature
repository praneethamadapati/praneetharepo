Feature: Amazon Opening Shopping Cart

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Opening Shopping Cart and validating mandatory details

    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    #Open Shopping Cart
    Then I click on "Amazon Shopping Cart"
    Then I should see the text "Your Shopping Cart is empty."
    Then I flash on "Your Shopping Cart Is Empty"
    Then I should see the text "Saved for later (7 items)"
    Then I click on "Move To Shopping Cart"
    Then I should see the text "Subtotal (1 item):"
    Then I select "Quantity Change To 2" from list
    Then I sleep
    Then I click on "Move To Save For Later"
    Then I should see the text "Subtotal (0 item):"
    Then I click on "Move To Shopping Cart"
    Then I should see the text "Subtotal (2 items):"
    Then I select "Quantity Change To 1" from list
    Then I sleep
    Then I click on "Move To Save For Later"
    Then I should see the text "Subtotal (0 item):"