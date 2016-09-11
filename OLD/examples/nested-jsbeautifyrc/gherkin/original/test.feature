Feature: The description of the feature that
might need to be wrapped
onto multiple lines

Scenario: The description of the scenario that
might need to be wrapped
onto multiple lines
Given I am in some state
When I take some action
# And I can add a comment
Then I should see some outcome

@tag1
# A comment gets moved above the tag
Scenario: This scenario has a tag
Then I should see some outcome

@tag1 @tag2
Scenario: This scenario has two tags
Then I should see some outcome

Scenario: This scenario does not have any tags
Then I should see some outcome