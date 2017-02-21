Feature: Amazon Browsing History

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Browsing History

    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    #Browsing History
    Then I click on "Browsing History"
    Then I flash on "Browsing History Text"
    Then I should see the text "Browsing history"
    Then I click on "Your Browsing History"
    Then I click on "Recommended For You"
    Then I flash on "Your Amazon.com"
    Then I should see the text "Your Amazon.com"
    Then I flash on "Items You Own"
    Then I should see the text " Recommended for You"
    Then I click on "Improve Your Recommendations"
    Then I flash on "Items You've Purchased"
    Then I should see the text " Improve Your Recommendations"
    Then I click on "Your Profile"
    Then I flash on "Complete Your Profile"
    Then I should see the text "Complete your profile"
    Then I click on "Learn More"
    Then I flash on "Improve Your Recommendations"
    Then I should see the text "Improve Your Recommendations"