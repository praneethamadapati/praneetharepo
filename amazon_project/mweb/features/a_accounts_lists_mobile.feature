Feature: Amazon Accounts and Lists

  Background:

    Given I open a chrome browser
    Then I clear cookies
    Then I navigate to the environment url

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Amazon.com Full Site"

  Scenario: Amazon Accounts and Lists-Gift Finder
    #Accounts and Lists
    Then I should see the text "Hello. Sign in"
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    Then I fire_event_onclick the "link" with "text" "Gift Organizer / Friends & Family Gifting"
    Then I flash the "element" with "text" "Add friends"
    Then I should see the text "Add friends to Gift Planner to get reminders for occasions, save gift ideas, see your friend's Wish Lists and more."
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Your Lists"
    Then I should see the text "Wish List"
    Then I fire_event_onclick the "link" with "text" "Gift Finder"
    Then I flash the "element" with "text" "Gift Finder"
    Then I should see the text "Gift Finder"
    Then I flash the "element" with "text" "Who are you shopping for?"
    Then I should see the text "Who are you shopping for?"
    Then I fire_event_onclick the "link" with "text" "Baby"
    Then I should see the text "Gifts for"

  Scenario: Amazon Accounts and Lists-Kid's Birthdays, Baby Registry
    #Accounts and Lists
    Then I should see the text "Hello. Sign in"
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    Then I fire_event_onclick the "link" with "text" "Gift Organizer / Friends & Family Gifting"
    Then I flash the "element" with "text" "Add friends"
    Then I should see the text "Add friends to Gift Planner to get reminders for occasions, save gift ideas, see your friend's Wish Lists and more."
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Your Lists"
    Then I should see the text "Wish List"
    Then I fire_event_onclick the "link" with "text" "Kids' Birthdays" whose parent element with "id" "nav-subnav"
    Then I fire_event_onclick the "link" with "text" "Baby Registry" whose parent element with "id" "nav-subnav"
    Then I flash the "link" with "text" "Registry Benefits"

  Scenario: Amazon Accounts and Lists-Wedding Registry
    #Accounts and Lists
    Then I should see the text "Hello. Sign in"
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I fire_event_onclick the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I fire_event_onclick the "element" with "id" "nav-link-accountList"
    Then I fire_event_onclick the "link" with "text" "Gift Organizer / Friends & Family Gifting"
    Then I flash the "element" with "text" "Add friends"
    Then I should see the text "Add friends to Gift Planner to get reminders for occasions, save gift ideas, see your friend's Wish Lists and more."
    Then I scroll to the bottom of the page
    Then I fire_event_onclick the "link" with "text" "Your Lists"
    Then I should see the text "Wish List"
    Then I fire_event_onclick the "link" with "text" "Wedding Registry" whose parent element with "id" "nav-subnav"
    Then I enter "Praneetha" in the text field with "name" "wedding_field-firstname"
    Then I enter "Madapati" in the text field with "name" "wedding_field-lastname"
    Then I fire_event_onclick the "input" with "class" "a-button-input"
    Then I should see the text "Find a List or Registry"
    Then I flash the "element" with "text" "Find a List or Registry"