Feature: Sign in
  In order to get access to protected sections of the site
  As a registered user
  I want to sign in
  
  
  Scenario: User signs in successfully
    Given the following users are registered:
    |email|password|
    |foo@bar.com|TestTest|
    And I go to the login page
    When I fill in "user_email" with "foo@bar.com"
    And I fill in "user_password" with "TestTest"
    And I press "Sign in" button
    Then I should see "Signed in successfully." message

  Scenario: User signs in successfully
    Given the following users are not registered:
    |email|password|
    |fake@bar.com|fakefake|
    And I go to the login page
    When I fill in "user_email" with "fake@bar.com"
    And I fill in "user_password" with "fakefake"
    And I press "Sign in" button
    Then I should see "Invalid email or password." message  