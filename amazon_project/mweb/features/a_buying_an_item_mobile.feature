Feature: Amazon Buying an Item

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Buying a product by logging in

    #Buy an Item
    Then I enter "iPhone 6S Case, Caseology [Vault Series II] Flexible TPU Slim Body Shield [Matte Black] [Stealth Armor] for Apple iPhone 6S (2015)" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "title" "iPhone 6S Case, Caseology [Vault II Line] Slim Fit Flex Armor Shock Protection [Matte Black] [Drop Tested] for Apple iPhone 6S (2015)"
    Then I select "2" from the list with "id" "quantity"
    Then I fire_event_onclick the "button" with "id" "add-to-cart-button"
    Then I fire_event_onclick the "link" with "id" "hlb-ptc-btn-native"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I fire_event_onclick the "link" with "class" "a-declarative a-button-text "
    Then I fire_event_onclick the "element" with "id" "order_0_ShippingSpeed_second"
    Then I fire_event_onclick the "element" with "id" "orderNum0shipWhenever"
    Then I navigate to the environment url
    Then I fire_event_onclick the "link" with "id" "nav-cart"
    Then I should see the text "Subtotal (2 items):"

  Scenario: Emptying the Shopping Cart

    #Empty the Shopping cart
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I fire_event_onclick the "link" with "id" "nav-cart"
    Then I should see the text "Subtotal (2 items):"
    Then I fire_event_onclick the "input" with "name" "submit.delete.CO4MIGTOASEFE"
    Then I should see the text "Subtotal (0 item):"
