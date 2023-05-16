Feature: Claim Graph
Give the participants the ability to quantify how much claim money they have spent towards their 
allocated plan budget.
![Alt text](images/test.png)
![Alt text](test.png)
![Alt text](../test.png)

@manual
Scenario: Claims Graph
	Given I am on the Payment History
	When I click on 'My Budget' button
	Then  I should be taken to the the Budgets screen
	And I should see a chart that shows my yearly spend against the yearly budget
	