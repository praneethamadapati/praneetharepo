Feature: Amazon Restaurants

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the Amazon Restaurants Food Delivery
    #Amazon Restaurants
    Then I click the "link" with "href" "https://primenow.amazon.com/restaurants?ref_=amzrst_nav_footer"
    Then I flash the "element" with "text" "Exclusively for Amazon Prime members"
    Then I should see the text "Exclusively for Amazon Prime members"
    Then I flash the "element" with "text" "See if we offer restaurant delivery in your area"
    Then I should see the text "See if we offer restaurant delivery in your area"
    Then I flash the "element" with "text" "Fast delivery"
    Then I should see the text "Fast delivery"
    Then I flash the "element" with "text" "$10 off your first order"
    Then I should see the text "$10 off your first order"
    Then I flash the "element" with "text" "Great selection"
    Then I should see the text "Great selection"
    Then I flash the "element" with "text" "Amazon Restaurants cities"
    Then I should see the text "Amazon Restaurants cities"
    Then I click the "link" with "href" "/restaurants/delivery/city/bay-area?cityNodeId=15281852011&ref_=pnr_lp_c_15281852011"
    Then I flash the "element" with "text" "Restaurants in Bay Area, CA"
    Then I should see the text "Restaurants in Bay Area, CA"
    Then I click the "link" with "href" "/restaurants/d/B01MAXYGQK?ref_=amzrst_pnr_cp_b_B01MAXYGQK_2"
    Then I enter "94582" in the text field with "id" "hw-seo-page-zip-solicitation-input-zip"
    Then I press enter
    Then I flash the "element" with "text" "We are not in"
    Then I should see the text "We are not in"