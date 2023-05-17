Feature: NotesDisplay
	Simple calculator for adding two numbers

	@manual  
	Scenario: Loading onto a new invoice shows minimized notes
		Given I have an invoice
		When I visit the Invoice screen
		Then I should see notes in a minimized state
	
	@manual
	Scenario: Clicking on minimized notes should maximize them
		Given I am on the invoice screen
		And the notes are minimized
		When I click on the notes
		Then the notes should maximize
