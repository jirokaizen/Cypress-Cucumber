const { Given, When, Then, And, BeforeStep,Before } = require("@badeball/cypress-cucumber-preprocessor");

Given("I visit {string} page", (url) => {
  cy.visit(url);
});

When("I search {string}", (searchItem) => {
  cy.xpath("//*[@title='Search' or @id='searchbox_input']").type(searchItem).type("{enter}")

});

Then("Should show {string} as top search results", (searchResult) => {
cy.trylang(searchResult)
});

Then("Should show {string} in search bar", (searchItem) => {
  cy.xpath("//input[@id='search_form_input']").should('have.value',searchItem)

});
