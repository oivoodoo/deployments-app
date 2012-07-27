Feature: View deployments following by name of the project
  In order to view deployments
  As an user
  I want to be able navigate to the selected project to see deployments from the projects list page

  Background:
    Given I have project with deployments

    When I am on the projects page

  Scenario: View deployments following by name
    When I follow by name of the project
      Then I should see deployments of staging
      And I should see commits that was deployed to the staging

