Feature: Invoice Screen
	

@mytag
Scenario Outline: View All Invoice Dates
	Given I have an invoice with InvoiceID: <InvoiceID> , InvoiceDate:<Invoice Date>
	And a Invoice Date of <Invoice Date>
	And a Approved Date of <Approved Date>
	And a Created Date of <Created Date>
	And a Payment Date  of <Payment Date>
	When I visit the Invoice Screen
	Then I should see an Invoice with an Invoice Date of <Invoice Date>
	And I should see an Invoice with an Approved Date of <Approved Date>
	And I should see an Invoice with an Created Date of <Created Date>
	And I should see an Invoice with an Payment Date  of <Payment Date>
	
	Examples: 
	  | InvoiceID | Invoice Date | Approved Date | Created Date |Payment Date|
	  | 1       | 2023-04-13   | 2023-04-14    | 2023-04-15   | 2023-04-15   |
	  | 2       | 2023-05-13   | NULL          | 2023-05-15   | 2023-05-15   |
	  | 3       | 2023-12-01   | NULL          | 2023-12-01   | NULL         |
   
Scenario: Loading onto a new invoice shows minimized notes
	Given I have an invoice
	When I visit the Invoice screen
	Then I should see notes in a minimized state
	
Scenario: Clicking on minimized notes should maximize them
	Given I am on the invoice screen
	And the notes are minimized
	When I click on the notes
	Then the notes should maximize
