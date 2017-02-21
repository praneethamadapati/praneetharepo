Feature: Amazon Today's Deals

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Opening deals for the day without logging in

    #Open Today's Deals
    Then I click the "link" with "text" "Today's Deals"
    Then I should see the text "Today's Deals"
    Then I flash the "element" with "class" "gbh1-bold"
#    Then I click the "element" with "class" "a-checkbox checkbox a-spacing-micro"
#    Then I should see the text "Books"
#    Then I flash the "element" with "class" "a-text-bold"
    Then I click the "link" with "text" "Watched Deals"
    Then I should see the text "Deals You're Watching"
    Then I flash the "element" with "class" "gbh1-bold"
    Then I click the "link" with "href" "/Coupons/b/ref=sv_gb_1?ie=UTF8&node=2231352011"
    Then I should see the text "Sign in to view your coupons"
    Then I flash the "link" with "class" "a-link-normal"
    Then I click the "link" with "text" "Outlet"
    Then I should see the text "Online shopping for outlet deals--find low prices on markdowns, clearance items, overstocks, and more"
    Then I flash the "element" with "id" "merchandised-content"
    Then I click the "link" with "text" "Open Box & Used"
    Then I click the "link" with "text" "Digital Deals"
    Then I should see the text "Featured Digital Deals"
    Then I flash the "element" with "id" "shovlStateHeader"
    Then I click the "link" with "text" "Woot! Deals"
    Then I should see the text "Today's Deals"
    Then I flash the "element" with "text" "Today's Deals"