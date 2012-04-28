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