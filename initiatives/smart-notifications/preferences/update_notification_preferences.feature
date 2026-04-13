@entry:web.settings @usecase:update-preferences @initiative:smart-notifications
Feature: Update Notification Preferences
  As a registered User
    I want to update my Notification Preferences
    So that I only receive Notifications through the Channels I choose

  Scenario: User enables a Notification Channel
    Given I am logged into the platform as a registered User
    And I have email Notifications disabled
    When I enable email in my Notification Preferences
    Then my Preferences are updated
    And future Notifications are delivered via email

  Scenario: User disables all Notification Channels
    Given I am logged into the platform as a registered User
    When I disable all Channels in my Notification Preferences
    Then my Preferences are updated
    And I see a warning that I will not receive any Notifications

  Scenario: Preferences update is rejected for invalid Channel
    Given I am logged into the platform as a registered User
    When I attempt to enable an unsupported Channel
    Then the update is rejected
    And I see a validation error listing the supported Channels
