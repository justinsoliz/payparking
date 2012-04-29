Feature: Creating transactions
  
  In order to park
  As a user
  I want to create them

  Scenario: Creating a transaction
    Given I am on the homepage
    When I follow "Park"
    And I fill in "Minutes" with "30"
    And I press "Complete"
    Then I should see "Parking reserved for 30 minutes"
