describe('The Home Page', () => {
  it('successfully loads', () => {
    // must use localhost:3000 here because by default
    // cypress will try and load 3001, the api server
    cy.visit('localhost:3000/')

  })
})