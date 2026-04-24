Feature: List Adoption Applications
  As a Shelter administrator
  I want to list all Adoption Applications for a given Pet
  So that I can review and manage incoming requests

  @status-draft
  Scenario: Pet has no Adoption Applications
    Given I am logged into the admin panel as a Shelter administrator
    And a Pet has not received any Adoption Applications
    When I view the Adoption Applications for the Pet
    Then I see an empty list with a message indicating no applications have been received
    And Another step

  Scenario: Adoption Applications can be filtered by status
    Given I am logged into the admin panel as a Shelter administrator
    And a Pet has Adoption Applications in various statuses
    When I filter the Adoption Applications by status "pending"
    Then I see only the Adoption Applications with status "pending"

  @status-draft
  Scenario: test-story
    Given test given
    When test-when
    Then test-then

  @status-draft
  Scenario: jkdfajsk
    Given 
    When 
    Then 
