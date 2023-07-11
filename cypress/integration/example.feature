Feature: Login
  As a user
  I want to log in to my account
  So that I can access the application

  Scenario: Successful login
    Given I am on the login page
    When I enter valid credentials
    And click on the login button
    Then I should be logged in

  Scenario: Invalid login
    Given I am on the login page
    When I enter invalid credentials
    And click on the login button
    Then I should see an error message