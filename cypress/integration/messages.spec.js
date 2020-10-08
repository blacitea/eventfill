import axios from 'axios';

describe('The Messaging System', () => {
  beforeEach(() => {
    axios.get('http://localhost:3001/cypress_rails_reset_state');
  });

  it('successfully loads', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/messages');
  });

  it('does not load if user is not logged in', () => {
    cy.visit('localhost:3000/messages');
    cy.contains('Please login').should('exist');
  });

  it('displays message chain with another user if contact is clicked', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/messages');

    cy.contains('Nicola').click();
    cy.contains('Yeah sure').should('exist');

    cy.contains('Sally').click();
    cy.contains('I have a show').should('exist');
    cy.contains('Yeah sure').should('not.exist');
  });

  it('sends a message when a talent is invited to an event by the owner', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/talents');

    cy.contains('Gawr Gura').click();
    cy.wait(500);

    cy.contains('Invite').should('exist').click();

    cy.contains('Message (Optional)').should('exist');
    cy.get('select').select('Perfect Fit');
    cy.get('textarea').type(
      'We think you are a perfect fit for our event of the same name! Please consider performing ^^;'
    );

    cy.contains('Send Invitation').click();

    cy.visit('localhost:3000/login/5');
    cy.visit('localhost:3000/messages');

    cy.contains('Jimothy Muirs').should('exist').click();

    cy.contains('Score! You have an event invitation!').should('exist');
  });

  it('sends a message to a registered attendee when an event is cancelled', () => {
    cy.visit('localhost:3000/login/4');
    cy.visit('localhost:3000/events/6');

    cy.contains('Cancel').click();

    cy.get('span#modal-close').click();

    cy.visit('localhost:3000/login/17');
    cy.visit('localhost:3000/messages');

    cy.contains('System').should('exist');
    cy.contains('System').click();
    cy.contains(
      "Nicola Muirs: Event 'Friday Magic!' has been cancelled! :("
    ).should('exist');
  });

  it('sends a message to an invited talent when an event is cancelled', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/events/1');

    cy.contains('Cancel').click();

    cy.get('span#modal-close').click();

    cy.visit('localhost:3000/login/4');
    cy.visit('localhost:3000/messages');

    cy.contains('System').should('exist');
    cy.contains('System').click();
    cy.contains(
      "AiChan: Event 'Anime Revolution 2020' + associated gigs have been cancelled! :("
    ).should('exist');
  });

  it('disables text-box when viewing messages from system', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/events/1');

    cy.contains('Cancel').click();

    cy.get('span#modal-close').click();

    cy.visit('localhost:3000/login/4');
    cy.visit('localhost:3000/messages');
    
    cy.contains('System').should('exist');
    cy.contains('System').click();

    cy.contains(
      "AiChan: Event 'Anime Revolution 2020' + associated gigs have been cancelled! :("
    ).should('exist');
    cy.get('textarea').should('not.exist');
  });
});
