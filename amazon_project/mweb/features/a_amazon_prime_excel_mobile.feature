Feature: Amazon Prime Account
  Check page features along the way

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url
    And I read the data from the "Amazon_User_Data_mobile.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the benefits of Amazon Prime-See More Plans
    #Amazon Prime
    Then I enter text for "Amazon Prime Mobile"
    Then I press enter
    Then I fire_event_onclick on "Amazon Prime Image"
    Then I should see the text "Get FREE Two-Day Shipping"
    Then I click on the "See More Plans"
    Then I should see the text "Choose the membership that's best for you"
    Then I should see the text "Start your free trial of Prime to enjoy"

  Scenario: Checking the benefits of Amazon Prime-Give the Gift of Prime
  #Amazon Prime
    Then I enter text for "Amazon Prime Mobile"
    Then I press enter
    Then I fire_event_onclick on "Amazon Prime Image"
    Then I should see the text "Get FREE Two-Day Shipping"
    Then I should see the text "Give the gift of Prime"
    Then I fire_event_onclick on "Give The Gift Of Prime"
    Then I should see the text "Give the gift of Prime"
    Then I should see the text "Prime members enjoy:"