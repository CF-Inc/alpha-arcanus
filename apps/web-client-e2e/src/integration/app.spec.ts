describe('web-client', () => {
  it('should display welcome message', () => {
    cy.visit('/');

    // Custom command example, see `../support/commands.ts` file
    cy.login('my-email@something.com', 'myPassword');
  });
});
