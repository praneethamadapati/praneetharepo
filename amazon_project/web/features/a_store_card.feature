Feature: Amazon Store Card

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the Amazon Store Card features

    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Amazon Store Card
    Then I flash the "element" with "text" "Amazon Payment Products"
    Then I should see the text "Amazon Payment Products"
    Then I click the "link" with "text" "Amazon.com Store Card"
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
#    Then I flash the "element" with "text" "Instant $20 Amazon.com Gift Card upon approval"
#    Then I should see the text "Instant $20 Amazon.com Gift Card upon approval"
#    Then I enter "madapatipraneetha@gmail.com" in the text field with "id" "username"
#    Then I enter "madapati140626!" in the text field with "id" "password"
    Then I click the "image" with "src" "https://images-na.ssl-images-amazon.com/images/G/01/credit/PLCC/Application/downsell/applynow._CB522083557_.png"
    Then I flash the "element" with "text" "Amazon.com Store Card issued by Synchrony Bank"
    Then I should see the text "Amazon.com Store Card issued by Synchrony Bank"
    Then I flash the "element" with "text" "Apply for the Amazon.com Store Card"
    Then I should see the text "Apply for the Amazon.com Store Card"
    Then I enter "Praneetha" in the text field with "id" "firstName"
    Then I enter "Madapati" in the text field with "id" "lastName"
    Then I sleep
    Then I select "October" from the list with "name" "birthday.month"
    Then I select "14" from the list with "name" "birthday.day"
    Then I enter "1992" in the text field with "id" "birthday.year"
    Then I click the "link" with "id" "continue-to-step2-announce"
    Then I flash the "element" with "text" "A valid income value is required."
    Then I should see the text "A valid income value is required."
    Then I click the "link" with "text" "Cancel and continue shopping"
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"