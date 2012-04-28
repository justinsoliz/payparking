Feature: Signing up
    
  In order to use the app
  As a user
  I want to be able to sign up

  Scenario: Signing up
    Given I am on the homepage
    When I follow "Register"
    And I fill in "Email" with "user@app.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Sign up"
    Then I should see "You have signed up successfully"

  Scenario: Signing up with invalid email
    Given I am on the homepage
    When I follow "Register"
    And I fill in "Email" with "invalid@email"
    And I fill in "Password" with "password"
    And I press "Sign up"
    Then I should see "Invalid email"

  Scenario: Signing up with missing password
    Given I am on the homepage
    When I follow "Register"
    And I fill in "Email" with "user@app.com"
    And I press "Sign up"
    Then I should see "A password is required"

  Scenario: Signing up with different password
    Given I am on the homepage
    When I follow "Register"
    And I fill in "Email" with "user@app.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "invalid"
    And I press "Sign up"
    Then I should see "Passwords should match"