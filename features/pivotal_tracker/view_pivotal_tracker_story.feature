Feature: View pivotal tracker story using on an id in commit
  In order to get details of pushed story
  As an user
  I want to be able to read pivotal tracker story using an id in commit message

  Background:
    Given I have a project
    And I have a deployments with pivotal tracker stories

  Scenario: View pivotal tracker story
    When I am on the project page
      Then I should see ids of pivotal tracker stories
      And I should be abe to navigate following id

