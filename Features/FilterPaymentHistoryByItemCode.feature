Feature: Filter Payment History By Item Code
Improve the search results giving the user filter by various parameters giving a more efficient and better user 
experience.
	
Background: 
	Given I am on the Payment History Page
	And I payment history of these invoices
	  | InvoiceId | InvoiceDate | Invoice Status | Provider Name | Support Category     | Item  |
	  | 1         | 2022-11-15  |Unpaid          | Provider A    | Physical Therapy     | X0001 |
	  | 2         | 2022-12-31  |Unpaid          | Provider X    | Physical Therapy     | X0001 |
	  | 3         | 2023-01-01  |Unpaid          | Provider V    | Physical Therapy     | X0001 |
	  | 4         | 2023-01-28  |Paid            | Provider A    | Physical Therapy     | X0001 |
	  | 5         | 2023-03-10  |Paid            | Provider B    | Physical Therapy     | X0006 |
	  | 6         | 2023-04-01  |Unpaid          | Provider C    | Occupational Therapy | X0005 |
	  | 7         | 2023-04-15  |Paid            | Provider C    | Physical Therapy     | X0004 |
	  | 8         | 2023-05-03  |Unpaid          | Provider A    | Physical Therapy     | X0003 |
	  | 8         | 2023-05-03  |Paid            | Provider C    | Occupational Therapy | X0001 |
	  | 9         | 2023-12-01  |Paid            | Provider A    | Psychologist         | X0007 |
	  | 10        | 2023-12-01  |Paid            | Provider A    | Physical Therapy     | X0004 |
	And I have clicked on the 'Advanced Filter' Button
	
	
@manual
Scenario: Filter By Item Code
	Given the I have the 'Advanced Filter Modal' open
	When I enter 'X0005' in the item input textbox
	And click the Filter Button
	Then the modal should close
	And the search results should display these invoices
	  | InvoiceId | Item  |
	  | 6         | X0005 | 