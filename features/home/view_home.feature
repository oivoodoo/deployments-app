Feature: View home page
  In order to view home page
  As an user
  I want to open home page and use navigation

  Background:
    Given I have project with deployments

    When I am on the home page

  Scenario: View home page clicking by logo
    Given I follow by name of the project

    When I click on the logo of the website
      Then I should be on the home page

  Scenario: View home page clicking by home tab
    Given I follow by name of the project

    When I click on the home tab
      Then I should be on the home page

