Feature: Sign in
	In order to get access to protected sections of the site
	As a registered user
	I want to sign in
	
	
	Scenario: User signs in successfully
  	Given I am registered user
    When I go to login page
    Then I fill in "user_email" with "foo@bar.com"
    Then I fill in "user_password" with "foobar"
    And I press "Sign in" button
    Then I should see "You are successfully logged in." message