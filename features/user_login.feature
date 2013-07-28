Feature: Sign in
	In order to get access to protected sections of the site
	A registered user
	Should be able to sign in
	
	
	Scenario: User signs in successfully
  	Given I exist as a user
    And I am not logged in
    When I sign in with valid credentials
    Then I see a successful sign in message
    When I return to the site
    Then I should be signed in