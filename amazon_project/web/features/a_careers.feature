Feature: Amazon Careers

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the Amazon Career Opportunities
    #Amazon Careers
    Then I flash the "element" with "text" "Get to Know Us"
    Then I click the "link" with "text" "Careers"
    Then I flash the "element" with "text" "Find jobs"
    Then I should see the text "Find jobs"
    Then I flash the "link" with "text" "Find jobs"
    Then I should see the text "Find jobs"
    Then I flash the "element" with "text" "Menu"
    Then I enter "Quality Asurance" in the text field with "id" "search_typeahead"
    Then I press enter
    Then I flash the "element" with "text" "Sorry, there are no jobs that meet your criteria"
    Then I should see the text "Sorry, there are no jobs that meet your criteria"
    Then I flash the "element" with "text" "Please change your search terms, or remove selected filters to see results."
    Then I should see the text "Please change your search terms, or remove selected filters to see results."
    Then I enter "Quality engineer" in the text field with "id" "search_typeahead"
    Then I press enter
    Then I flash the "element" with "text" "10 of 5727 open positions"
    Then I should see the text "10 of 5727 open positions"
    Then I click the "element" with "text" "Menu"
    Then I click the "link" with "text" "Amazon culture & benefits"
    Then I flash the "element" with "text" "we pioneer"
    Then I should see the text "we pioneer"
    Then I flash the "element" with "text" "Earth's most customer-centric company"
    Then I should see the text "Earth's most customer-centric company"
    Then I click the "link" with "text" "Leadership Principles"
    Then I click the "link" with "text" "Pioneers"
    Then I click the "link" with "text" "Diversity"
    Then I flash the "element" with "text" "Diversity at Amazon"
    Then I should see the text "Diversity at Amazon"
    Then I click the "link" with "text" "Benefits"
    Then I flash the "element" with "text" "Benefits"
    Then I should see the text "Benefits"
    Then I flash the "element" with "text" "Financial security"
    Then I should see the text "Financial security"
    Then I flash the "element" with "text" "Health care"
    Then I should see the text "Health care"
    Then I flash the "element" with "text" "Employee assistance"
    Then I should see the text "Employee assistance"
    Then I flash the "text" with "text" "Timeoff"
    Then I should see the text "Timeoff"
    Then I flash the "text" with "text" "Employee stock"
    Then I should see the text "Employee stock"
