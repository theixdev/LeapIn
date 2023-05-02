Feature: Claim Graph
Give the participants the ability to quantify how much claim money they have spent towards their 
allocated plan budget.


@manual
Scenario: Claims Graph
	Given I am on the Payment History
	When I click on 'Budget' button
	Then  I should be taken to the Charts screen that displays my current spend verse allocated budget
	