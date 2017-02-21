Feature: Amazon Returns and Replacements

  Background:

    Given I open a browser
    And I navigate to "https://www.amazon.com/ref=ap_frn_logo"

    #Amazon Logo
    Then I should see the text "Amazon"
    Then I flash the "element" with "id" "nav-logo"

  Scenario: Checking the Returns and Replacement function

    #Valid Email and Password
    Then I click the "element" with "id" "nav-link-accountList"
    And I enter "madapatipraneetha@gmail.com" in the text field with "id" "ap_email"
    And I enter "madapati140626!" in the text field with "id" "ap_password"
    Then I click the "button" with "id" "signInSubmit"
    Then I should see the text "Hello, Praneetha"
    #Returns & Replacements
    Then I click the "link" with "href" "/gp/css/returns/homepage.html/ref=footer_hy_f_4"
    Then I flash the "element" with "text" "Returns Center"
    Then I should see the text "Returns Center"
    Then I click the "image" with "src" "https://images-na.ssl-images-amazon.com/images/G/01/returns/return-items._CB156408836_.png"
    Then I should see the text "Your Orders"
    Then I click the "link" with "href" "/gp/css/returns/homepage.html/ref=footer_hy_f_4"
    Then I flash the "element" with "text" "Returns Center"
    Then I should see the text "Returns Center"
    Then I click the "image" with "src" "https://images-na.ssl-images-amazon.com/images/G/01/returns/return-gift._CB156408873_.png"
    Then I flash the "element" with "text" "Gift Returns"
    Then I should see the text "Gift Returns"
    Then I click the "link" with "href" "/gp/css/returns/homepage.html/ref=footer_hy_f_4"
    Then I flash the "element" with "text" "Returns Center"
    Then I should see the text "Returns Center"
    Then I click the "image" with "src" "https://images-na.ssl-images-amazon.com/images/G/01/returns/manage-returns._CB156408915_.png"
    Then I flash the "element" with "text" "We did not find any existing return authorizations."
    Then I should see the text "We did not find any existing return authorizations."