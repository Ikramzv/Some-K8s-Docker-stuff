Scenario: As an AAp user, I should be able to manage views on the orders page
        Given I login OneRail web application as "AAP_ORG_USER" user
        When I navigate to "ORDERS" page
        Then I delete all views
        When I create a view as "Test"
        When I set "Test" as default view
        When I click Add Filter button
        When I click on "Service Level" option
        When I select "30-minute-sla-manual" service level
        When I create a view as "Automation-Test"
        When I navigate to "DELIVERIES" page
        When I navigate to "ORDERS" page
        Then I verify that deliveries with "30-minute-sla-manual" service level are only displayed
        Then I delete all views
        Then I logout the application





