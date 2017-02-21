Feature: Amazon Buying an Item

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Buying a product by logging in

    #Buy an Item
    Then I enter "iPhone 6S Case, Caseology [Vault Series II] Flexible TPU Slim Body Shield [Matte Black] [Stealth Armor] for Apple iPhone 6S (2015)" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I click the "link" with "title" "iPhone 6S Case, Caseology [Vault Series II] Flexible TPU Slim Body Shield [Matte Black] [Stealth Armor] for Apple iPhone 6S (2015)"
    Then I select "2" from the list with "id" "quantity"
    Then I click the "button" with "id" "add-to-cart-button"
    Then I click the "link" with "id" "hlb-ptc-btn-native"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I wait for "4" seconds
    Then I click the "link" with "class" "a-declarative a-button-text "
    Then I click the "element" with "id" "order_0_ShippingSpeed_second"
    Then I click the "element" with "id" "orderNum0shipWhenever"
    Then I click the "input" with "value" "Continue"
#    Then I click the "element" with "id" "pm_0"
#    Then I enter "4833160093122064" in the text field with "id" "addCreditCardNumber"
#    Then I click the "element" with "id" "confirm-card"
    Then I click the "element" with "id" "continue-top"
#    Then I click the "link" with "href" "/gp/buy/addressselect/handlers/continue.html/ref=ox_billing_ship_to_this_1?ie=UTF8&action=select-billing&addressID=onrmrokqkip&enableDeliveryPreferences=1&fromAnywhere=0&isCurrentAddress=0&numberOfDistinctItems=1&paymentInstrumentId=0h_PU_CUS_b96f4445-aba5-41d8-81f3-70b290b32e9e&paymentMethodCode=CC&purchaseId=106-2000416-0313038&requestToken=&hasWorkingJavascript=1"
#    Then I click the "link" with "id" "prime-pip-updp-decline"
#    Then I enter "Praneetha Madapati" in the text field with "id" "enterAddressFullName"
#    Then I enter "1009 Cedarwood Loop" in the text field with "id" "enterAddressAddressLine1"
#    Then I enter "San Ramon" in the text field with "id" "enterAddressCity"
#    Then I enter "California" in the text field with "id" "enterAddressStateOrRegion"
#    Then I enter "94582" in the text field with "id" "enterAddressPostalCode"
#    Then I enter "4159900814" in the text field with "id" "enterAddressPhoneNumber"
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    Then I click the "link" with "id" "nav-cart"
    Then I should see the text "Subtotal (2 items):"
#    Then I select "1" from the list with id "a-autoid-3-announce"
#    Then I should see the text "Subtotal (1 item):"

  Scenario: Emptying the Shopping Cart

    #Empty the Shopping cart
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I click the "link" with "id" "nav-cart"
    Then I should see the text "Subtotal (2 items):"
    Then I click the "input" with "value" "Delete"
    Then I should see the text "Subtotal (0 item):"
