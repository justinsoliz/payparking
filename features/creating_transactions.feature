Feature: Creating transactions
  
  In order to park
  As a user
  I want to create them

  Background:
    Given I am on the homepage
    When I follow "Park"

  Scenario: Creating a transaction
    And I fill in "Minutes" with "30"
    And I press "Complete"
    Then I should see "Parking reserved for 30 minutes"

  Scenario: Creating a transaction without minutes
    And I press "Complete"
    Then I should see "Minutes required"