import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';


Given("I am in the exercise application", () => {
    cy.visit('https://qalab.pl.tivixlabs.com/')
    })
Given("I am in the exercise application", () => {
    cy.visit('https://qalab.pl.tivixlabs.com/')
    })
When('I select <country>', () => {
    cy.get('[id="country"]').select('<country>')
    })
When('I select <city>', () => {
    cy.get('[id="country"]').select('<country>')
    })
When('I insert proper dates', () => {
    cy.get('[id="pickup"]').type('0020130101')
    cy.get('[id="dropoff"]').type('0020130102')
    })
When('I click search button', () => {
    cy.get('.row button').click()
    })
Then('Then validation of match will be working and I will see information about empty car list at first message')
    cy.get('.col-md-8 h3').should('have.length', 2)
    cy.get('.todo-list li').first().should('have.text', 'Empty cars list')
    cy.get('.todo-list li').last().should('have.text', "'Country doesn't match city")
    })