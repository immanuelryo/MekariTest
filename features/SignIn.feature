Feature: SignIn Feature for Website Amazon Online Shopping

  Scenario: SignIn Scenario with using valid data
    Given I launch amazon page
    And I click on signIn tab
    And I fill the email field with valid email
    And I click continue button
    And I fill the password field with valid password
    When I click signIn button
    Then I successfully login and see Home page

  Scenario: SignIn Scenario with using invalid email
    Given I launch amazon page
    And I click on signIn tab
    And I fill the email field with invalid email
    When I click continue button
    Then I failed login and see error message