Feature: Creating vehicles
  
  In order to park with a vehicle
  As a user
  I want to be able to add vehicles

  Scenario: Creating a vehicle
    Given I am on the homepage
    When I follow "Vehicles"
    And I follow "New vehicle"
    And I fill in "Make" with "Ford"
    And I fill in "Model" with "F150"
    And I fill in "Year" with "2007"
    And I fill in "Color" with "Blue"
    And I fill in "License" with "ABC-123"
    And I press "Save vehicle"
    Then I should see "Your vehicle has been saved"