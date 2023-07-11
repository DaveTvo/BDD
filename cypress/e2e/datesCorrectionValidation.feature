@validation
Feature: Validation of dates correction
  As a user
  I want to have validation of dates correction,
  So I will be informed about correction of filtering by date setup

  Scenario Outline: Validation for <pickup_date> and <dropoff_date>
    Given I am in the exercise application
    When I select valid country and city
    And I insert <pickup_date>
    And I insert <dropoff_date>
    And I click search button
    Then URL with selected options
    And validation of dates correction will be working
    Examples:
      | pickup_date | dropoff_date | is_validation |
      | 0020130505  | 0020130505   | false         |
      | 0020130505  | 0020130506   | false         |
      | 0020130505  | 0020130605   | false         |
      | 0020130505  | 0020140505   | false         |
      | 0020130505  | 0020120505   | true          |
      | 0020130505  | 0020130504   | true          |
      | 0020130405  | 0020130505   | true          |
