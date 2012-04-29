Feature: Viewing vehicles
  
  In order to view saved vehicles
  As a user
  I want to be able to see my vehicles

  Scenario: Listing all vehicles
    Given there is a vehicle with a license of "ABC-123"
    And I am on the homepage
    And I follow "Vehicles"
    Then I should see "ABC-123"