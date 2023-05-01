Feature: Filter By Date
Background: 
	Given I have am on the Payment History Page
	And I have made a search that returns these invoices
	  | InvoiceId | InvoiceDate |
	  | 1         | 2022-11-15  |
	  | 2         | 2022-12-31  |
	  | 3         | 2023-01-01  |
	  | 4         | 2023-01-28  |
	  | 5         | 2023-03-10  |
	  | 6         | 2023-04-01  |
	  | 7         | 2023-04-15  |
	  | 8         | 2023-05-03  |
	  | 8         | 2023-05-03  |
	  | 9         | 2023-12-01  |
	  | 10        | 2023-12-01  |
	
Scenario: Advanced Filter By Dates
	Given I am on the Payment History screen
	When I click on the 'Advanced Filter Button'
	Then I should see an 'Advanced Filter Modal'
		And it should contain a From Date input and a To Date input
		

Scenario: Filter Invoice From Date
	Given the I have the 'Advanced Filter Modal' open
	When I input a FromDate of '2022-12-31'
	And click the Filter Button
	Then the modal should close
	And the search results should display these invoices
	  | InvoiceId | InvoiceDate |
	  | 2         | 2022-12-31  |
	  | 3         | 2023-01-01  |
	  | 4         | 2023-01-28  |
	  | 5         | 2023-03-10  |
	  | 6         | 2023-04-01  |
	  | 7         | 2023-04-15  |
	  | 8         | 2023-05-03  |
	  | 8         | 2023-05-03  |
	  | 9         | 2023-12-01  |
	  | 10        | 2023-12-01  |
   
Scenario: Filter Before Date
	Given the I have the 'Advanced Filter Modal' open
	When I input a ToDate of '2022-12-31'
	And click the Filter Button
	Then the modal should close
	And the search results should display these invoices
	  | InvoiceId | InvoiceDate |
	  | 1         | 2022-11-15  |
	  | 2         | 2022-12-31  |

Scenario: Filter Between Dates
	Given the I have the 'Advanced Filter Modal' open
	When I input a FromDate of '2023-04-01 '
	And I input a ToDate of '2023-05-03'
	And click the Filter Button
	Then the modal should close
	And the search results should display these invoices
	  | InvoiceId | InvoiceDate |
	  | 6         | 2023-04-01  |
	  | 7         | 2023-04-15  |
	  | 8         | 2023-05-03  |
	  | 8         | 2023-05-03  |
	