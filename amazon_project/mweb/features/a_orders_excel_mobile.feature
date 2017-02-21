Feature: Amazon Opening Orders

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

#  Scenario: Opening orders and validating mandatory details-Your Orders
#
#    #Valid Email and Password
#    Then I should see the text "Sign In"
#    Then I fire_event_onclick on "Sign In Mobile"
#    And I enter text for "User Email"
#    And I enter text for "User Password"
#    Then I fire_event_onclick on "Sign In"
#    Then I fire_event_onclick on "No Thanks"
#
#    #Your Orders
#    Then I fire_event_onclick on "Your Account"
#    Then I should see the text "Your Account"
#    Then I should see the text "Orders"
#    Then I flash on "Orders"
#    Then I fire_event_onclick on "Your Orders"
#    Then I fire_event_onclick on "Iphone7 Case"
#    Then I should see the text "iPhone 7 Case, iPhone 7 Glitter Case, Surpriseyou Creative Design Flowing Liquid Quicksand Floating Luxury Bling Glitter Sparkle Love Heart Diamonds Clear Hard Case for iPhone 7 (Gold Diamonds)"
#    Then I flash on "Title Section"

  Scenario: Opening orders and validating mandatory details-Your Subscribe & Save Items

  #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

  #Your Subscribe & Save Items
    Then I fire_event_onclick on "Your Account"
    Then I click on "Your Subscribe & Save Items"
    Then I should see the text "You don't have any active Subscribe & Save deliveries."
    Then I flash on "No Active Subscriptions"
    Then I should see the text "Subscribe & Save benefits:"
    Then I should see the text "How subscriptions work"

#  Scenario: Opening orders and validating mandatory details-Your Service Requests
#
#  #Valid Email and Password
#    Then I should see the text "Sign In"
#    Then I fire_event_onclick on "Sign In Mobile"
#    And I enter text for "User Email"
#    And I enter text for "User Password"
#    Then I fire_event_onclick on "Sign In"
#    Then I fire_event_onclick on "No Thanks"
#
#  #Your Service Requests
#    Then I fire_event_onclick on "Your Account"
#    Then I fire_event_onclick on "Your Service Requests"
#    Then I should see the text "Your Service Requests"
#    Then I should see the text "How custom services work:"
#    Then I fire_event_onclick on "Business Services"
#    Then I should see the text "Your Service Requests"
#    Then I should see the text "Why Amazon Business Services?"