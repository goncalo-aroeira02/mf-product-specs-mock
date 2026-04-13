@entry:web.settings @usecase:list-channels @initiative:smart-notifications
Feature: List Notification Channels
  As a registered User
  I want to see all available Notification Channels and their current status
  So that I can decide which Channels to enable or disable

  Scenario: All available Channels are listed with their status
    Given I am logged into the platform as a registered User
    When I navigate to my Notification Preferences
    Then I see a list of all supported Channels
    And each Channel shows whether it is enabled or disabled

  Scenario: User with default Preferences sees all Channels enabled
    Given I am a newly registered User who has not modified Preferences
    When I navigate to my Notification Preferences
    Then I see all Channels enabled by default
