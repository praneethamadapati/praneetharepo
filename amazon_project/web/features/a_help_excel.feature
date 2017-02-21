Feature: Amazon Help

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Help Option
    #Amazon Help
    Then I click on "Help"
    Then I flash on "What Can We Help You With?"
    Then I should see the text "Hello. What can we help you with?"
    Then I flash on "Browse Help Topics"
    Then I should see the text "Browse Help Topics"
    Then I flash on "Find More Solutions"
    Then I should see the text "Find more solutions"
    Then I enter text for "Help Search"
    Then I press enter
    Then I flash on "Help Search Results"
    Then I should see the text "Help Search Results"
    Then I click on "Help"
    Then I enter text for "Help Search Other Item"
    Then I press enter
    Then I sleep
    Then I flash on "Help & Customer Service"
#    Then I flash on "Search In All Departments"
#    Then I should see the text "Search for WellsFargo in all departments."
    Then I flash on "See Results In Seller Help"
    Then I should see the text "See results in Seller Help."
    Then I click on "Help"
    Then I flash on "Your Orders"
    Then I should see the text "Your Orders"
    Then I flash on "Returns & Refunds"
    Then I should see the text "Returns & Refunds"
    Then I flash on "Device Support"
    Then I should see the text "Device Support"
    Then I flash on "Manage Prime"
    Then I should see the text "Manage Prime"
    Then I flash on "Payments & Gift Cards"
    Then I should see the text "Payments & Gift Cards"
    Then I flash on "Account Settings"
    Then I should see the text "Account Settings"