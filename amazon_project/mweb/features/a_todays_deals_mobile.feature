Feature: Amazon Today's Deals

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Opening deals for the day without logging in

    #Open Today's Deals
    Then I enter "Coupons" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "All Coupons"
    Then I should see the text "All Coupons"
    Then I flash the "element" with "text" "All Coupons"
    Then I enter "Coupons" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Health & Beauty Coupons"
    Then I should see the text "Health & Personal Care"
    Then I enter "Coupons" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Grocery Coupons"
    Then I should see the text "Grocery & Gourmet"
    Then I flash the "element" with "text" "Grocery & Gourmet"
    Then I enter "Coupons" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Prime Pantry Coupons"
    Then I should see the text "Prime Pantry"
    Then I flash the "element" with "text" "Prime Pantry"
    Then I enter "Coupons" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Your Coupons"
    Then I should see the text "Recently Clipped Coupons"
    Then I flash the "element" with "text" "Recently Clipped Coupons"