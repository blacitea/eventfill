describe('The Home Page', () => {
  before(() => {
    cy.exec('bin/rake db:reset');
  })

  it('successfully loads', () => {
    cy.visit('/')

  })
})