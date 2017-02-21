Feature: Amazon Departments

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Exploring Departments

    Then I flash the "element" with "id" "nav-shop"
    Then I click the "element" with "id" "nav-shop"
    Then I flash the "element" with "text" "Amazon Video"
    Then I should see the text "Amazon Video"
    Then I should see the text "AmazonFresh"
    Then I click the "link" with "href" "/AmazonFresh/b/ref=sd_allcat_afs_aaf?ie=UTF8&node=10329849011"
    Then I enter "94582" in the text field with "id" "zip-input"
    Then I click the "element" with "id" "continue-shop-button"
    Then I click the "link" with "href" "/afx/lists/pastpurchases/ref=sv_fresh_3"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Your Past Purchases"
    Then I should see the text "It looks like you haven’t received any deliveries yet."
    Then I click the "link" with "href" "/l/ref=sv_fresh_4?_encoding=UTF8&bbn=10329849011&node=13904808011"
    Then I flash the "element" with "class" "bxw-pageheader__title__text"
    Then I should see the text "Fresh Deals"
    Then I flash the "element" with "id" "nav-shop"
    Then I click the "element" with "id" "nav-shop"
    Then I should see the text "Kindle E-readers & Books"
    Then I click the "link" with "href" "/dp/B00ZV9PXP2/ref=sd_allcat_k_ods_eink_bn"
    Then I flash the "element" with "id" "titleSection"
    Then I flash the "element" with "class" "kcc-title-container"