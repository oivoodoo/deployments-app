Feature: View projects
  In order to view existing projects in the app
  As an user
  I want to be able to open projects page and see list of projects

  Background:
    Given I have few projects

  Scenario: View list of projects
    When I am on the projects page
      Then I should see list of projects

