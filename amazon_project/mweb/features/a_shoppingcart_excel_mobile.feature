Feature: Amazon Opening Shopping Cart

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Opening Shopping Cart and validating mandatory details

    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

    #Open Shopping Cart
    Then I fire_event_onclick on "Amazon Shopping Cart"
    Then I should see the text "Your Shopping Cart is empty."
    Then I flash on "Your Shopping Cart Is Empty"
    Then I should see the text "Saved for later (6 items)"
    Then I fire_event_onclick on "Move To Shopping Cart"
    Then I should see the text "Cart subtotal (1 item):"
    Then I select "Quantity Change To 2" from list
    Then I sleep
    Then I fire_event_onclick on "Move To Save For Later"
    Then I should see the text "Your Shopping Cart is empty."
    Then I fire_event_onclick on "Move To Shopping Cart"
    Then I should see the text "Cart subtotal (2 items):"
    Then I select "Quantity Change To 1" from list
    Then I sleep
    Then I fire_event_onclick on "Move To Save For Later"
    Then I should see the text "Your Shopping Cart is empty."