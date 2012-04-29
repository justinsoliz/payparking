Feature: Editing vehicles

  In order to edit vehicles
  As a site user
  I want to edit vehicles

  Scenario: Updating a vehicle
    Given there is a vehicle with a license of "ABC-123"
    And I am on the homepage
    And I follow "Vehicles"
    And I follow "Ford F150"
    And I follow "Edit vehicle"
    And I fill in "Color" with "Black"
    And I press "Save vehicle"
    Then I should see "Your vehicle has been updated."