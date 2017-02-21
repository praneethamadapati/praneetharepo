Feature: Amazon Departments

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Exploring Departments

    Then I flash on "Departments"
    Then I click on "Departments"
    Then I flash on "Amazon Video"
    Then I should see the text "Amazon Video"
    Then I should see the text "AmazonFresh"
    Then I click on "Amazon Fresh"
    Then I enter text for "Zipcode"
    Then I click on "Continue Shopping"
    Then I click on "Past Purchases"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Your Past Purchases"
    Then I should see the text "It looks like you haven’t received any deliveries yet."
    Then I click on "Fresh Deals"
    Then I flash on "Fresh Deals Text"
    Then I should see the text "Fresh Deals"
    Then I flash on "Departments"
    Then I click on "Departments"
    Then I should see the text "Kindle E-readers & Books"
    Then I click on "Kindle"
    Then I flash on "Title"
    Then I flash on "Compare Kindle E-Readers"