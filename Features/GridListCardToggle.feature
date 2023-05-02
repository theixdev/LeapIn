Feature: Toggle Payment History between Grid and Cards
Provide the  display output of the invoice page for
preferenced viewing.

@mytag
Scenario: View Payment History as Cards
	Given I am on the Payment History Page
	And  the Invoice Listing is displayed as a Grid
	When I click the 'Toggle View' button
	Then  the  Invoice Listing should be displayed as Cards
	
Scenario: View Payment History as a Grid
	Given I am on the Payment History Page
	And  the Invoice Listing is displayed as a Cards
	When I click the 'Toggle View' button
	Then  the  Invoice Listing should be displayed as Grid