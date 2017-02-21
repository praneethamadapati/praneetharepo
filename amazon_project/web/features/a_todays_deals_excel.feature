Feature: Amazon Today's Deals

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Opening deals for the day without logging in

    #Open Today's Deals
    Then I click on "Today's Deal"
    Then I should see the text "Today's Deals"
    Then I flash on "Today's Deals Text"
    Then I click on "Watched Deals"
    Then I should see the text "Deals You're Watching"
    Then I flash on "Today's Deals Text"
    Then I click on "Coupons"
    Then I should see the text "Sign in to view your coupons"
    Then I flash on "Find Coupons By Category"
    Then I click on "Outlet"
    Then I should see the text "Online shopping for outlet deals--find low prices on markdowns, clearance items, overstocks, and more"
    Then I click on "Open Box & Used"
#    Then I flash on "WareHouse Deals"
    Then I click on "Digital Deals"
    Then I should see the text "Featured Digital Deals"
    Then I flash on "All Available"
    Then I click on "Woot! Deals"
    Then I should see the text "Today's Deals"