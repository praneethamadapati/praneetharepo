Feature: Amazon Careers

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Checking the Amazon Career Opportunities
    #Amazon Careers
    Then I flash the "element" with "text" "Get to Know Us"
    Then I fire_event_onclick the "link" with "text" "Careers"
#    Then I flash the "element" with "class" "find-jobs"
    Then I should see the text "Find jobs"
    Then I enter "Quality Asurance" in the text field with "id" "search_typeahead"
    Then I press enter
    Then I scroll to the center of the page
    Then I scroll to the bottom of the page
    Then I scroll to the top of the page
    Then I enter "Quality engineer" in the text field with "id" "search_typeahead"
    Then I press enter
    Then I scroll to the center of the page
    Then I scroll to the bottom of the page
    Then I scroll to the top of the page
    Then I fire_event_onclick the "button" with "text" "Menu"
    Then I fire_event_onclick the "link" with "text" "Amazon culture & benefits"
    Then I flash the "element" with "text" "we pioneer"
    Then I should see the text "we pioneer"
    Then I flash the "element" with "text" "Earth's most customer-centric company"
    Then I should see the text "Earth's most customer-centric company"
    Then I fire_event_onclick the "link" with "text" "Leadership Principles"
    Then I fire_event_onclick the "link" with "text" "Pioneers"
    Then I fire_event_onclick the "link" with "text" "Diversity"
    Then I flash the "element" with "text" "Diversity at Amazon"
    Then I should see the text "Diversity at Amazon"
    Then I fire_event_onclick the "link" with "text" "Benefits"
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
