@status-draft
Feature: Login Flow
  User authentication feature

  @status-draft
  Scenario: Successful Login
    Given user is on login page
    When user enters valid credentials
    Then user sees the dashboard
