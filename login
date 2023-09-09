/// <reference types="cypress" />



describe("Login Test", function() {                             
                                                                
    before("SetupData", () =>{                                  
        cy.fixture("loginData").then(data =>{
        this.data = data
        })
    })
    it("passes", () => {
        cy.visit("https://the-internet.herokuapp.com/login")
        this.data.forEach(element => {
            cy.login(element.name, element.password)            
        })
    })
})
