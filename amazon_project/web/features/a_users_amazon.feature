Feature: User's Amazon Account
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking User's Amazon Account
    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"

    #User's amazon account
    Then I click the "link" with "text" "Praneetha's Amazon.com"
    Then I flash the "element" with "text" "Amazon Video - TV"
    Then I should see the text "Amazon Video - TV"
    Then I flash the "element" with "text" "Amazon Video - Movies"
    Then I should see the text "Amazon Video - Movies"
    Then I flash the "element" with "text" "More to Explore"
    Then I should see the text "More to Explore"
    Then I flash the "element" with "text" "New Releases in Appstore for Android"
    Then I should see the text "New Releases in Appstore for Android"
    Then I flash the "element" with "text" "Your Recently Viewed Items and Featured Recommendations"
    Then I should see the text "Your Recently Viewed Items and Featured Recommendations"
    Then I flash the "element" with "text" "You viewed"
    Then I should see the text "You viewed"