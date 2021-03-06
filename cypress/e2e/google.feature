Feature: Google test
    Background:
        Given I am on the page https://www.google.fr/
        When I click on the button "Tout accepter" if it exists
        When I click on the button "J'accepte" if it exists

    Scenario: Go to google, see the image
        Then I should have an image with alt "Google"

    Scenario: Perform a query
        When I type "Devoteam" on the input named "q"
        When I click on the button "Recherche Google"
        Then I should see a list of 7 markups with selector "#rso .tF2Cxc"