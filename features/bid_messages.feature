Feature: Create message for bid
    In order to communicate with selected bidder
    As a task creator
    I want to post a message on bid page

    Background:
        Given I am registered user
        And I created task
        And there is a bid for this task
        

    Scenario: Task creator posts message 
        Given I selected one bid
        When I go to bid details page
        And I fill in "bmessage_content" with "Hello!"
        And I press "Send message" button
        Then I should see "Hello!" message in "message_list"