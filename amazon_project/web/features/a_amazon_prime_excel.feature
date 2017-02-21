Feature: Amazon Prime Account
  Check page features along the way

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"
    And I read the data from the "Amazon_User_Data.xlsx"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash on "Amazon Logo"

  Scenario: Checking the benefits of Amazon Prime
    #Amazon Prime
    Then I click on "Amazon Prime"
    Then I flash on "Free Shipping Benefit"
    Then I should see the text "Fast, FREE shipping on over 50 million eligible items"
    Then I flash on "Prime Shipping Options"
    Then I flash on "Access to Video Streaming"
    Then I should see the text "Instant access to video streaming"
    Then I click on "Browse Movies & TV Shows"
    Then I click on "Amazon Prime"
    Then I flash on "Playlists & Stations"
    Then I should see the text "Over two million songs. Thousands of playlists and stations."
    Then I flash on "Books, Magazines & More"
    Then I should see the text "Books, Magazines & More"
    Then I flash on "Original Audio Series From Audible"
    Then I should see the text "Original audio series from Audible"
    Then I flash on "Twitch Prime"
    Then I should see the text "Twitch Prime"
    Then I flash on "Photos"
    Then I should see the text "All your photos, together at last"
    Then I flash on "Get Early Access"
    Then I should see the text "Get Early Access"
    Then I click on "Amazon Lightning Deals"
    Then I flash on "Today's Deals"
    Then I should see the text "Today's Deals"
    Then I click on "Amazon Prime"
    Then I should see the text "Look for"

