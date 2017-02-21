Feature: Amazon Store Card

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the Amazon Store Card features

    #Valid Email and Password
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Amazon Store Card
    Then I scroll to the bottom of the page
    Then I flash the "element" with "text" "Amazon Payment Products"
    Then I should see the text "Amazon Payment Products"
    Then I fire_event_onclick the "link" with "text" "Amazon.com Store Card"
    Then I flash the "element" with "text" "Become an Amazon.com Store Cardholder"
    Then I should see the text "Become an Amazon.com Store Cardholder"
    Then I flash the "element" with "text" "Promotional financing offers"
    Then I should see the text "Promotional financing offers"
    Then I flash the "element" with "text" "No annual fee"
    Then I should see the text "No annual fee"
    Then I flash the "element" with "text" "Zero fraud liability"
    Then I should see the text "Zero fraud liability"
    Then I flash the "element" with "text" "Join Prime and earn 5% back every day"
    Then I should see the text "Join Prime and earn 5% back every day"
    Then I fire_event_onclick the "image" with "src" "https://images-na.ssl-images-amazon.com/images/G/01/credit/PLCC/Application/downsell/applynow._CB522083557_.png"
    Then I flash the "element" with "text" "Apply now for the Amazon.com Store Card from Synchrony Bank"
    Then I should see the text "Apply now for the Amazon.com Store Card from Synchrony Bank"
    Then I flash the "element" with "text" "Tell us about yourself"
    Then I should see the text "Tell us about yourself"
    Then I enter "Praneetha" in the text field with "id" "firstName"
    Then I enter "Madapati" in the text field with "id" "lastName"
    Then I scroll to the center of the page
    Then I select "October" from the list with "name" "birthday.month"
    Then I select "14" from the list with "name" "birthday.day"
    Then I enter "1992" in the text field with "id" "birthday.year"
    Then I fire_event_onclick the "link" with "id" "continue-to-step2-announce"
    Then I flash the "element" with "text" "A valid income value is required."
    Then I should see the text "A valid income value is required."
    Then I fire_event_onclick the "link" with "id" "a-autoid-0-announce"
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"