Feature: Testing webrat

  Scenario: Testing webrat, cucumber and sinatra
    When I visit the homepage
    Then I should see "boobies!"
