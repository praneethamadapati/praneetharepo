Feature: Amazon Store Card

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Amazon Store Card features

    #Valid Email and Password
    Then I should see the text "Sign In"
    Then I fire_event_onclick on "Sign In Mobile"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I fire_event_onclick on "Sign In"
    Then I fire_event_onclick on "No Thanks"

    #Amazon Store Card
    Then I enter text for "A Store Card"
    Then I press enter
    Then I fire_event_onclick on "Store Card"
    Then I should see the text "$20 Amazon.com Gift Card"
    Then I flash on "$20 Amazon.com Gift Card"
    Then I should see the text "5% Back for Amazon Prime members"
    Then I flash on "5% Back For Amazon Prime Members"
    Then I should see the text "Cardholders have access to exclusive financing offers"
    Then I flash on "Cardholders have Access to Exclusive Financing Offers"
    Then I should see the text "Instant Credit Decision"
    Then I flash on "Instant Credit decision"
    Then I fire_event_onclick on "Apply Now"
    Then I flash on "Apply now for Amazon.com Store Card"
    Then I should see the text "Apply now for the Amazon.com Store Card from Synchrony Bank"
    Then I flash on "Tell Us About Yourself"
    Then I should see the text "Tell us about yourself"
    Then I enter text for "First Name"
    Then I enter text for "Last Name"
    Then I select "Birthday Month" from list
    Then I select "Birthday Date" from list
    Then I enter text for "Birthday Year"
    Then I fire_event_onclick on "Continue To Next Step"
    Then I flash on "Valid Income Value Is Required"
    Then I should see the text "A valid income value is required."
    Then I fire_event_onclick on "Back"
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"