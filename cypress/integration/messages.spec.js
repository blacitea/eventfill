import axios from 'axios';

describe('The Messaging System', () => {
  before(() => {
    axios.get('http://localhost:3001/cypress_rails_reset_state')
  });

  it.skip('successfully loads', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/messages');
  });

  it.skip('does not load if user is not logged in', () => {
    cy.visit('localhost:3000/messages');
    cy.contains('Please login').should('exist');
  });

  it.skip('displays message chain with another user if contact is clicked', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/messages');

    cy.contains('Nicola').click();
    cy.contains('Yeah sure').should('exist');
    cy.contains('Sally').click();
    cy.contains('I have a show').should('exist');
    cy.contains('Yeah sure').should('not.exist');
  });

  it('sends a message when a talent is invited to an event by the owner', () => {
    cy.visit('localhost:3000/events/1');
  });
});