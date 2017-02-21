Feature: Amazon Prime Account
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the benefits of Amazon Prime
    #Amazon Prime
    Then I click the "link" with "id" "nav-link-prime"
    Then I flash the "element" with "text" "Fast, FREE shipping on over 50 million eligible items"
    Then I should see the text "Fast, FREE shipping on over 50 million eligible items"
    Then I flash the "link" with "text" "Learn more about all the Prime shipping options"
    Then I flash the "element" with "text" "Instant access to video streaming"
    Then I should see the text "Instant access to video streaming"
    Then I click the "link" with "text" "Browse movies and TV shows"
    Then I click the "link" with "id" "nav-link-prime"
    Then I flash the "element" with "text" "Over two million songs. Thousands of playlists and stations."
    Then I should see the text "Over two million songs. Thousands of playlists and stations."
    Then I flash the "element" with "text" "Books, Magazines & More"
    Then I should see the text "Books, Magazines & More"
    Then I flash the "element" with "text" "Original audio series from Audible"
    Then I should see the text "Original audio series from Audible"
    Then I flash the "element" with "text" "Twitch Prime"
    Then I should see the text "Twitch Prime"
    Then I flash the "element" with "text" "All your photos, together at last"
    Then I should see the text "All your photos, together at last"
    Then I flash the "element" with "text" "Get Early Access"
    Then I should see the text "Get Early Access"
    Then I click the "link" with "text" "Shop Amazon Lightning Deals"
    Then I flash the "element" with "text" "Today's Deals"
    Then I should see the text "Today's Deals"
    Then I click the "link" with "id" "nav-link-prime"
    Then I should see the text "Look for"

