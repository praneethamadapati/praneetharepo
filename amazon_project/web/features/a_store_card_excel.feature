Feature: Amazon Store Card

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Amazon Store Card features

    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    #Amazon Store Card
    Then I flash on "Amazon Payment Products"
    Then I should see the text "Amazon Payment Products"
    Then I click on "Store Card"
    Then I flash on "Become An Amazon Store Card Holder"
    Then I should see the text "Become an Amazon.com Store Cardholder"
    Then I flash on "Promotional Financing Offers"
    Then I should see the text "Promotional financing offers"
    Then I flash on "No Annual Fee"
    Then I should see the text "No annual fee"
    Then I flash on "Zero Fraud Liability"
    Then I should see the text "Zero fraud liability"
    Then I flash on "Join Prime And Earn 5% Back Every Day"
    Then I should see the text "Join Prime and earn 5% back every day"
    Then I click on "Apply Now"
    Then I flash on "Store Card Issued By Synchrony Bank"
    Then I should see the text "Amazon.com Store Card issued by Synchrony Bank"
    Then I flash on "Apply For Amazon.com Store Card"
    Then I should see the text "Apply for the Amazon.com Store Card"
    Then I enter text for "First Name"
    Then I enter text for "Last Name"
    Then I sleep
    Then I select "Birthday Month" from list
    Then I select "Birthday Date" from list
    Then I enter text for "Birthday Year"
    Then I click on "Continue To Next Step"
    Then I flash on "Valid Income Value Is Required"
    Then I should see the text "A valid income value is required."
    Then I click on "Cancel & Continue Shopping"
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"