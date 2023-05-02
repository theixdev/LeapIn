Feature: Payment History Search Results
A participants search state will remain after returning from an invoice. This will save the participant 
time and frustration re-entering the search details

Background: 
	Given I have the following list of invoices
	| InvoiceId | InvoiceFrom  |
	| 1         | Test Company |
	| 2         | XYZ Industry |
	| 3         | Testers PTY LTD |
 
@manual	
Scenario: Maintaining search results
	Given I am on the Payment History screen
	And I have completed a search for 'test'
	And I can view my search results of
	  | InvoiceId | InvoiceFrom     |
	  | 1         | Test Company    |
	  | 3         | Testers PTY LTD |
	When I navigate to another screen and return to the search
	Then my search results should the same 
	
