Feature: Amazon Download Order Reports

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking Amazon Download Order Reports feature with start date less than end start
    #Download Order Reports
    Then I should see the text "Hello. Sign in"
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I click the "element" with "id" "nav-link-accountList"
    Then I click the "link" with "text" "Download Order Reports"
    Then I select "Orders and shipments" from the list with "id" "report-type"
    Then I select "February" from the list with "id" "report-month-start"
    Then I select "6" from the list with "id" "report-day-start"
    Then I select "2016" from the list with "id" "report-year-start"
    Then I select "March" from the list with "id" "report-month-end"
    Then I select "3" from the list with "id" "report-day-end"
    Then I select "2017" from the list with "id" "report-year-end"
    Then I enter "Hello" in the text field with "id" "report-name"
    Then I click the "element" with "id" "report-confirm"
    Then I wait for "5" seconds
    Then I reload the page
    Then I should see the text "Your Reports"
    Then I flash the "element" with "text" "Your Reports"
    Then I click the "element" with "name" "delete-report"
    Then I should see the text "You have no submitted reports."

  Scenario: Checking Amazon Download Order Reports feature with start date more than end start
  #Download Order Reports
    Then I should see the text "Hello. Sign in"
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I click the "element" with "id" "nav-link-accountList"
    Then I click the "link" with "text" "Download Order Reports"
    Then I select "Returns" from the list with "id" "report-type"
    Then I select "February" from the list with "id" "report-month-start"
    Then I select "5" from the list with "id" "report-day-start"
    Then I select "2017" from the list with "id" "report-year-start"
    Then I select "March" from the list with "id" "report-month-end"
    Then I select "3" from the list with "id" "report-day-end"
    Then I select "2016" from the list with "id" "report-year-end"
    Then I enter "Hello35646" in the text field with "id" "report-name"
    Then I click the "element" with "id" "report-confirm"
    Then I should see the text "Start date must be in the past"
    Then I flash the "element" with "text" "Start date must be in the past"
    Then I should see the text "You have no submitted reports."