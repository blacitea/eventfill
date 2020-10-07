import axios from 'axios';

describe('User App Flow', () => {

  before(() => {
    axios.get('http://localhost:3001/cypress_rails_reset_state')
  })

  it('allows browsing events before logging in', () => {
    cy.visit('localhost:3000/');
    cy.visit('localhost:3000/explore/events');

    cy.contains('Explore Events').should('exist');
  });

  it('does not allow viewing a profile before logging in', () => {
    cy.visit('localhost:3000/');
    cy.visit('localhost:3000/profile');

    cy.contains('Please login to view your profile').should('exist');
  });

  it('allows user to view and register for an event', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/explore/events');

    cy.contains('Cute Kittens!').click();

    cy.contains('Handmade Crafts').should('exist');
    cy.contains('Claim Ticket').click();

    
    cy.contains('Your ticket is secured!').should('exist');
    cy.get('span#modal-close').click();

    cy.contains('Your ticket is secured!').should('not.exist');
    cy.contains('Claim Ticket').should('not.exist');

    cy.contains('6/10').should('exist');
    cy.contains('Cancel Ticket').should('exist');
  });

  it('allows user to cancel registration for an event', () => {
    cy.visit('localhost:3000/login/10');
    cy.visit('localhost:3000/events/1');

    cy.contains('Anime Revolution 2020').should('exist');
    cy.contains('Cancel Ticket').click();

    cy.contains('Your reservation is cancelled!').should('exist');
    cy.get('span#modal-close').click();

    cy.contains('Cancel Ticket').should('not.exist');
    cy.contains('Your reservation is cancelled!').should('not.exist');

    cy.contains('189/200').should('exist');
    cy.contains('Claim Ticket').should('exist');
  });

  it('allows user to see their personal information and sub-categories', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/profile');

    cy.contains('Jimothy Muirs').should('exist');
    cy.contains('My Events').should('exist');
    cy.contains('My Performances').should('exist');
    cy.contains('Attending events').should('exist');
  });

  it('allows user to see their owned events, if any', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/profile');

    cy.contains('My Events').should('exist').click();
    cy.contains('Anime Revolution 2020').should('exist');
  });

  it("allows user to see their talent profiles' gigs, if any", () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/profile');

    cy.contains('My Performances').should('exist').click();
    
    cy.contains('Talent Profile: Travis S').should('exist');
    cy.contains('Talent Profile: Jimothy Speed').should('exist');
    cy.contains('Event: Demon Slayer').should('exist');
  });

  it('allows user to see events they have registered to attend, if any', () => {
    cy.visit('localhost:3000/login/11');
    cy.visit('localhost:3000/profile');

    cy.contains('Attending events').should('exist').click();
    cy.contains('Anime Revolution 2020').should('exist');
  });
})