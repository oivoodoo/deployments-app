Feature: View deployments
  In order to view deployments information of the project
  As an User
  I want to be able to read deployment information for all releases

  Background:
    Given I have a project

  Scenario: View deployments information of staging env
    Given I have already deployed project to the staging

    When I am on the deployments page
      Then I should see deployments of staging
      And I should see commits that was deployed to the staging

  Scenario: View deployments information of production env
    Given I have already deployed project to the staging
    And I have already deployed project to the production

    When I am on the deployments page
      Then I should see deployments of production
      And I should see commits that was deployed to the production
      And I should see deployments of staging
      And I should see commits that was deployed to the staging

