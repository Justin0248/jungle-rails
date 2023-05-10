it("Adds item to cart", () => {
    cy.visit('/')
    cy.get('[alt="Scented Blade"]')
      cy.get('[class="btn"]')
      .first()
      .click({ force: true });
    });