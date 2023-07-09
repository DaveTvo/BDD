import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('I am on the login page', () => {
  cy.visit('/login');
});

When('I enter valid credentials', () => {
  cy.get('#username').type('myusername');
  cy.get('#password').type('mypassword');
});

When('I enter invalid credentials', () => {
  cy.get('#username').type('invaliduser');
  cy.get('#password').type('invalidpass');
});

When('I click on the login button', () => {
  cy.get('#login-button').click();
});

When('I click on the login button', () => {
  cy.get('#login-button').click();
});

Then('I should be logged in', () => {
  // Perform assertions to verify successful login
});

Then('I should see an error message', () => {
  // Perform assertions to verify error message is displayed
});