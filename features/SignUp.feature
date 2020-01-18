Feature: SignUp Feature for Website Amazon Online Shopping

  Scenario: SignUp Scenario with using valid data
    Given I launch amazon link pages
    And I click on signIn tabs
    And I click create your Amazon account buttons
    And I fill the name field with valid name
    And I fill the email field with valid emails
    And I fill the password field with valid passwords
    And I fill the re-entered password field with valid password
    And I click create your amazon button
    When I fill the otp field with valid otp
    Then I click verify buttons

  Scenario: SignUp Scenario with password and re-enter are not match
    Given I launch amazon link pages
    And I click on signIn tabs
    And I click create your Amazon account buttons
    And I fill the name field with valid name
    And I fill the email field with valid emails
    And I fill the password field with valid passwords
    And I fill the re-entered password field with invalid password
    And I click create your amazon button
    Then I failed to register and see error message
