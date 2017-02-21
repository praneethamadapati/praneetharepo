Feature: Amazon Accounts and Lists

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Amazon Accounts and Lists
    #Accounts and Lists
    Then I should see the text "Hello. Sign in"
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    Then I click the "element" with "id" "nav-link-accountList"
    Then I click on link with text "Gift Organizer / Friends & Family Gifting"
    Then I flash the "element" with "text" "Get Started by Adding Friends"
    Then I should see the text "Get Started by Adding Friends"
    Then I click the "link" with "href" "/gp/registry/wishlist/ref=cm_wl_your_lists"
    Then I should see the text "Wish List"
    Then I click the "link" with "text" "Gift Finder"
    Then I flash the "element" with "text" "Gift Finder"
    Then I should see the text "Gift Finder"
    Then I flash the "element" with "text" "Who are you shopping for?"
    Then I should see the text "Who are you shopping for?"
    Then I click the "link" with "href" "https://www.amazon.com/ss/gift-finder?ageGroup=baby"
    Then I should see the text "Gifts for"
    Then I click the "link" with "href" "/gp/gift-central/organizer/ref=sv_cm_gft_1"
    Then I flash the "element" with "text" "Get Started by Adding Friends"
    Then I should see the text "Get Started by Adding Friends"
    Then I click the "link" with "href" "/gp/toys/birthday/ref=sv_cm_gft_2"
    Then I click the "link" with "href" "/wedding/home/ref=sv_wl_4"
    Then I click the "link" with "id" "a-autoid-1-announce"
    Then I flash the "element" with "text" "Registry Favorites"
    Then I should see the text "Registry Favorites"
    Then I click the "element" with "id" "nav-link-accountList"