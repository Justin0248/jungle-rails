describe("Navigation", () => {

    it("Should navigate to Scented Blade", () => {
        cy.visit('/')
        cy.get('[alt="Scented Blade"]').click()
    });
});