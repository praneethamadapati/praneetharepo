Feature: Amazon Buying an Item

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Buying a product by logging in

    #Buy an Item
    Then I enter text for "Search Box"
    Then I press enter
    Then I click on "Item Title"
    Then I select "Quantity" from list
    Then I click on "Add To Cart"
    Then I click on "Proceed To Checkout"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I sleep
    Then I click on "Ship To This Address"
    Then I click on "Two Day Shipping"
    Then I click on "Ship Items Faster"
    Then I click on "Continue"
    Then I click on "Continue To Place Order"
    Then I sleep
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    Then I click on "Amazon Shopping Cart"
    Then I should see the text "Subtotal (2 items):"
    Then I select "Quantity Change" from list
    Then I should see the text "Subtotal (1 item):"

  Scenario: Emptying the Shopping Cart

    #Empty the Shopping cart
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    Then I click on "Amazon Shopping Cart"
    Then I should see the text "Subtotal (1 item):"
    Then I click on "Delete Item"
    Then I should see the text "Subtotal (0 item):"
