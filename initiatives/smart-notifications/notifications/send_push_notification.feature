@entry:api.events @usecase:send-push @initiative:smart-notifications @integration:pushhub
Feature: Send Push Notification
  As the notification system
  I want to send push Notifications to Users' devices
  So that Users receive real-time alerts on their mobile or desktop

  Scenario: Push Notification is sent to all registered devices
    Given a system event has occurred that triggers a Notification
    And the target User has push enabled in their Preferences
    And the User has registered devices
    When the Notification is processed
    Then a push Notification is sent to all registered devices via PushHub

  Scenario: Push Notification is skipped when no devices are registered
    Given a system event has occurred that triggers a Notification
    And the target User has push enabled in their Preferences
    But the User has no registered devices
    When the Notification is processed
    Then no push Notification is sent
    And the event is logged as "no_devices"
