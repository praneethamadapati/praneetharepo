Feature: Amazon Returns and Replacements

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the Returns and Replacement function

    #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Returns & Replacements
    Then I enter "Returns" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I should see the text "Returns Center – Return Purchased Items or Gifts & Track Your Returns"
    Then I flash the "link" with "text" "Returns Center – Return Purchased Items or Gifts & Track Your Returns"
    Then I fire_event_onclick the "link" with "text" "Returns Center"
    Then I should see the text "Your Orders"
    Then I fire_event_onclick the "image" with "title" "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"
    Then I should see the text "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"

  Scenario: Checking the Returns and Replacement function

  #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
  #Returns & Replacements
    Then I enter "Returns" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I should see the text "Returns Center – Return Purchased Items or Gifts & Track Your Returns"
    Then I flash the "link" with "text" "Returns Center – Return Purchased Items or Gifts & Track Your Returns"
    Then I fire_event_onclick the "link" with "text" "Returns Policy"
    Then I should see the text "Help & Customer Service"
    Then I flash the "link" with "text" "Help & Customer Service"
    Then I should see the text "About Our Returns Policies"
    Then I flash the "element" with "text" "About Our Returns Policies"

  Scenario: Checking the Returns and Replacement function

#Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
#Returns & Replacements
    Then I enter "Returns" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I should see the text "Returns Center – Return Purchased Items or Gifts & Track Your Returns"
    Then I flash the "link" with "text" "Returns Center – Return Purchased Items or Gifts & Track Your Returns"
    Then I fire_event_onclick the "link" with "text" "Refunds"
    Then I should see the text "Help & Customer Service"
    Then I flash the "link" with "text" "Help & Customer Service"
    Then I should see the text "About Refunds"
    Then I flash the "element" with "text" "About Refunds"