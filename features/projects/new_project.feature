Feature: New project
  In order to create new project in the app for registering deployments
  As an user
  I want to be able to create new project

  Background:
    Given I am on the new project page

  Scenario: New project
    When I fill all required fields
    And I save changes
      Then I should see new project in the list

  Scenario: Don't create with invalid fields
    When I don't fill one required field
    And I save changes
      Then I should see error notification

