@entry:api.events @usecase:send-email @initiative:smart-notifications @integration:sendcloud
Feature: Send Email Notification
  As the notification system
  I want to send email Notifications to Users when a triggering event occurs
  So that Users are informed of important activity through their preferred Channel

  Email Notifications are rendered using the appropriate Template and delivered via SendCloud.
  Delivery is only attempted if the User has email enabled in their Preferences.

  Scenario: Email Notification is sent successfully
    Given a system event has occurred that triggers a Notification
    And the target User has email enabled in their Preferences
    When the Notification is processed
    Then an email is rendered using the matching Template
    And the email is delivered to the User via SendCloud

  Scenario: Email Notification is skipped when channel is disabled
    Given a system event has occurred that triggers a Notification
    But the target User has email disabled in their Preferences
    When the Notification is processed
    Then no email is sent to the User

  Scenario: Email delivery failure is recorded
    Given a system event has occurred that triggers a Notification
    And the target User has email enabled in their Preferences
    When the Notification is processed
    But SendCloud fails to deliver the email
    Then the delivery failure is logged
    And the Notification is marked as "failed"
