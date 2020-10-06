describe('The Messaging System', () => {
  it('successfully loads', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/messages');
  });

  it('does not load if user is not logged in', () => {
    cy.visit('localhost:3000/messages');
    cy.contains('Please login');
  });

  it('displays message chain with another user if contact is clicked', () => {
    cy.visit('localhost:3000/login/1');
    cy.visit('localhost:3000/messages');
  });
});