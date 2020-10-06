import axios from 'axios';

describe('The Home Page', () => {

  before(() => {
    axios.get('http://localhost:3001/cypress_rails_reset_state')
  })

  it('successfully reloads the db before running', () => {
    // must use localhost:3000 here because by default
    // cypress will try and load 3001, the api server
    cy.visit('localhost:3000/login/1')

    cy.visit('localhost:3000/events/1')

    cy.contains('Cancel').click()

    cy.get('#modal-close').click()
  })
})