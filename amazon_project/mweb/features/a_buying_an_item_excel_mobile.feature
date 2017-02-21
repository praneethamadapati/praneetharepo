Feature: Amazon Buying an Item

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Buying a product by logging in

    #Buy an Item
    Then I enter text for "Search Box"
    Then I press enter
    Then I fire_event_onclick on "Item Title"
    Then I select "Quantity" from list
    Then I fire_event_onclick on "Add To Cart"
    Then I fire_event_onclick on "Proceed To Checkout"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "Ship To This Address"
    Then I fire_event_onclick on "Two Day Shipping"
#    Then I fire_event_onclick on "Ship Items Faster"
    Then I fire_event_onclick on "Continue"
    Then I fire_event_onclick on "Continue To Place Order"
    Then I navigate to the environment url
    Then I fire_event_onclick on "Amazon Shopping Cart"
    Then I should see the text "Cart subtotal (2 items):"
    Then I select "Quantity Change" from list
    Then I should see the text "Cart subtotal (1 item):"

  Scenario: Emptying the Shopping Cart

    #Empty the Shopping cart
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"
    Then I fire_event_onclick on "Amazon Shopping Cart"
    Then I should see the text "Cart subtotal (1 item):"
    Then I click on "Delete Item"
    Then I should see the text "Your Shopping Cart is empty."
