Feature: Amazon User's Garage

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the User's Garage and it's functions

    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    #Amazon User's Garage
    Then I click on "Accounts & Lists"
    Then I click on "Your Garage"
    Then I should see the text "Your Garage"
    Then I flash on "No Vehicles In The Garage"
    Then I should see the text "You currently have no vehicles in Your Garage"
    Then I click on "Add Your First Vehicle"
    Then I flash on "Vehicle Type Text"
    Then I should see the text "Vehicle Type"
    Then I select "Vehicle Type" from list
    Then I flash on "Vehicle Year Text"
    Then I should see the text "Year"
    Then I select "Vehicle Year" from list
    Then I flash on "Vehicle Make Text"
    Then I should see the text "Make"
    Then I select "Vehicle Make" from list
    Then I flash on "Vehicle Model Text"
    Then I should see the text "Model"
    Then I click on "Cancel Button"
    Then I sleep
    Then I reload the page
    Then I click on "Deals & Rebates"
    Then I should see the text "Deals in Automotive"
    Then I flash on "Deals In Automative"
    Then I should see the text "Today's Deals in Automotive & Powersports"
    Then I click on "Best Sellers"
    Then I should see the text "Amazon Best Sellers"
    Then I flash on "Amazon Best Sellers"
    Then I click on "Vehicles"
    Then I flash on "Amazon Vehicles"
    Then I should see the text "Amazon Vehicles"
