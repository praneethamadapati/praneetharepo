Feature: Amazon Browsing History

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the Browsing History

    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Browsing History
    Then I click the "link" with "href" "/gp/history/ref=nav_nav_timeline_view_history"
    Then I flash the "element" with "text" "Browsing history"
    Then I should see the text "Browsing history"
#    Then I flash the "element" with "text" "Your Recently Viewed Items and Featured Recommendations"
#    Then I should see the text "Your Recently Viewed Items and Featured Recommendations"
#    Then I flash the "element" with "text" "You viewed"
#    Then I should see the text "You viewed"
    Then I click the "link" with "text" "Your Browsing History"
    Then I click the "link" with "text" "Recommended For You"
    Then I flash the "link" with "text" "Your Amazon.com"
    Then I should see the text "Your Amazon.com"
    Then I flash the "link" with "text" "items you own"
    Then I should see the text " Recommended for You"
    Then I click the "link" with "text" "Improve Your Recommendations"
    Then I flash the "element" with "text" "Items you've purchased"
    Then I should see the text " Improve Your Recommendations"
    Then I click the "link" with "text" "Your Profile"
    Then I flash the "element" with "text" "Complete your profile"
    Then I should see the text "Complete your profile"
    Then I click the "link" with "text" "Learn More"
    Then I flash the "element" with "text" "Improve Your Recommendations"
    Then I should see the text "Improve Your Recommendations"