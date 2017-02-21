Feature: Amazon User's Garage

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the User's Garage and it's functions

    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Amazon User's Garage
#    Then I hover over "link" with "href" "/gp/css/homepage.html/ref=nav_youraccount_btn"
    Then I click the "element" with "text" "Hello, Praneetha"
    Then I click the "link" with "href" "/gp/your-garage?ref_=ya_your_garage_desktop"
#    Then I flash the "element" with "text" "Welcome to Your Garage.You can"
    Then I should see the text "Your Garage"
    Then I flash the "element" with "id" "ag-no-vehicles-text-box"
    Then I should see the text "You currently have no vehicles in Your Garage"
    Then I click the "element" with "text" "Add your first vehicle"
    Then I flash the "element" with "text" "Vehicle Type"
    Then I should see the text "Vehicle Type"
    Then I select "Motorcycle or Scooter" from the list with "id" "vehicle-select-chooser-native-vcdb"
    Then I flash the "element" with "text" "Year"
    Then I should see the text "Year"
    Then I select "2017" from the list with "id" "vehicle-select-chooser-native-year"
    Then I flash the "element" with "text" "Make"
    Then I should see the text "Make"
    Then I select "Ducati" from the list with "id" "vehicle-select-chooser-native-make"
    Then I flash the "element" with "text" "Model"
    Then I should see the text "Model"
    Then I click the "button" with "text" "Cancel"
    Then I wait for "3" seconds
    Then I reload the page
    Then I click the "link" with "href" "/Deals-Automotive/b/ref=sv_auto_1?ie=UTF8&node=392446011"
    Then I should see the text "Deals in Automotive"
    Then I flash the "element" with "text" "Deals in Automotive"
    Then I should see the text "Today's Deals in Automotive & Powersports"
    Then I click the "link" with "href" "/gp/bestsellers/automotive/ref=sv_auto_2"
    Then I should see the text "Amazon Best Sellers"
    Then I flash the "element" with "text" "Amazon Best Sellers"
    Then I click the "link" with "href" "/Vehicles/b/ref=sv_auto_12?ie=UTF8&node=10677469011"
    Then I flash the "element" with "text" "Amazon Vehicles"
    Then I should see the text "Amazon Vehicles"
