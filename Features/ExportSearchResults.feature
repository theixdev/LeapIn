Feature: Export Search Results to CSV

Background: 	
	Given I have the following list of invoices
	| InvoiceId | InvoiceFrom  |
	| 1         | Test Company |
	| 2         | XYZ Industry |
	| 3         | Testers PTY LTD |

@mytag
Scenario: Export CSV
	Given I am on the Invoice Search Screen
	And I have executed a search that returns the results 
	  | InvoiceId | InvoiceFrom     |
	  | 1         | Test Company    |
	  | 3         | Testers PTY LTD |
	When I click the export CSV
	Then I should see a prompt alerting me to check my email
	And I should recieve a CSV containing the following records
	  | InvoiceId | InvoiceFrom     |
	  | 1         | Test Company    |
	  | 3         | Testers PTY LTD |