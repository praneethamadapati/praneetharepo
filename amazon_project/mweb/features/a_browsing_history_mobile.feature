Feature: Amazon Browsing History

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the Browsing History-Complete Profile

    #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Browsing History
    Then I enter "Browsing History" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Manage Browsing History"
    Then I flash the "element" with "text" "Browsing history"
    Then I should see the text "Browsing history"
    Then I fire_event_onclick the "link" with "text" "Your Browsing History"
    Then I fire_event_onclick the "link" with "text" "Recommended For You"
    Then I should see the text "Your Amazon.com"
    Then I should see the text "If you're not Praneetha Madapati, click here"
    Then I flash the "link" with "text" "If you're not Praneetha Madapati, click here"
    Then I flash the "link" with "text" "items you own"
    Then I should see the text " Recommended for You"
    Then I fire_event_onclick the "link" with "text" "Improve Your Recommendations"
    Then I flash the "element" with "text" "Items you've purchased"
    Then I should see the text " Improve Your Recommendations"
    Then I fire_event_onclick the "link" with "text" "Your Profile"
    Then I flash the "element" with "text" "Complete your profile"
    Then I should see the text "Complete your profile"

  Scenario: Checking the Browsing History-Learn More

  #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
  #Browsing History
    Then I enter "Browsing History" in the text field with "id" "twotabsearchtextbox"
    Then I press enter
    Then I fire_event_onclick the "link" with "text" "Manage Browsing History"
    Then I flash the "element" with "text" "Browsing history"
    Then I should see the text "Browsing history"
    Then I fire_event_onclick the "link" with "text" "Your Browsing History"
    Then I fire_event_onclick the "link" with "text" "Recommended For You"
    Then I should see the text "Your Amazon.com"
    Then I should see the text "If you're not Praneetha Madapati, click here"
    Then I flash the "link" with "text" "If you're not Praneetha Madapati, click here"
    Then I flash the "link" with "text" "items you own"
    Then I should see the text " Recommended for You"
    Then I fire_event_onclick the "link" with "text" "Improve Your Recommendations"
    Then I flash the "element" with "text" "Items you've purchased"
    Then I should see the text " Improve Your Recommendations"
    Then I fire_event_onclick the "link" with "text" "Learn More"
    Then I flash the "element" with "text" "Improve Your Recommendations"
    Then I should see the text "Improve Your Recommendations"