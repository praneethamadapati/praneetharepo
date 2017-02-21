Feature: Amazon Returns and Replacements

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the Returns and Replacement function

    #Valid Email and Password
    Then I click on "Accounts & Lists"
    And I enter text for "User Email"
    And I enter text for "User Password"
    Then I click on "Sign In"
    Then I should see the text "Hello, Praneetha"
    #Returns & Replacements
    Then I scroll to the bottom of the page
    Then I click on "Returns & Replacements"
    Then I flash on "Returns Center"
    Then I should see the text "Returns Center"
    Then I click on "Return Items"
    Then I should see "Choose an order to start your return"
#    Then I enter text for "Search Orders Input"
#    Then I press enter
#    Then I select "Time Range" from list
#    Then I flash on "Orders Placed In The Past 6 Months"
    Then I click on "Returns & Replacements"
    Then I flash on "Returns Center"
    Then I should see the text "Returns Center"
    Then I click on "Return A Gift"
    Then I flash on "Gift Returns"
    Then I should see the text "Gift Returns"
    Then I enter text for "Order ID"
    Then I press enter
    Then I flash on "Alert Message"
    Then I click on "Returns & Replacements"
    Then I flash on "Returns Center"
    Then I should see the text "Returns Center"
    Then I click on "Manage Returns"
    Then I flash on "No Existing Return Authorizations"
    Then I should see the text "We did not find any existing return authorizations."
    Then I click on "Back Button"
    Then I flash on "Returns Center"
    Then I should see the text "Returns Center"