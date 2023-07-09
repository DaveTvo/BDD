@validation
Feature: Validation of country and city matching
  As a user
  I want to have validation of matching country and city in filter
  So I will be informed about correction of filtering by country setup

  Scenario Outline: Validation for <country> and <city>
    Given I am in the exerc ise application
    Given I select correct dates
    When I select <country>
    And I Select <city>
    And I insert proper dates
    And I click search button
    Then validation of match will be working and I will see information about empty car list at first message
    Examples:
      | country  | city    | is_validation |
      | France   | Berlin  | false         |
      | France   | Cracow  | false         |
      | France   | Paris   | true          |
      | France   | Wroclaw | false         |
      | Germainy | Berlin  | true          |
      | Germainy | Cracow  | false         |
      | Germainy | Paris   | false         |
      | Germainy | Wroclaw | false         |
      | Poland   | Berlin  | false         |
      | Poland   | Cracow  | true          |
      | Poland   | Paris   | false         |
      | Poland   | Wroclaw | true          |