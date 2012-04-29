Feature: Viewing transactions
  
  In order to view transaction history
  As a user
  I want to be able to see a list of past transactions

  Scenario: Listing all transactions
    Given there is a transaction for "30" minutes
    And I am on the homepage
    When I follow "View transactions"
    Then I should see "30 minutes"
    
