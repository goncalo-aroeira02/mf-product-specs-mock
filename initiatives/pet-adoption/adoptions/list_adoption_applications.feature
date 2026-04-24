Feature: List Adoption Applications
  As a Shelter administrator
  I want to list all Adoption Applications for a given Pet
  So that I can review and manage incoming requests

  @status-draft
  Scenario: Adoption Applications are listed for a Pet
    And a Pet has received Adoption Applications
    When I view the Adoption Applications for the Pet
    Then I see a list of all Adoption Applications sorted by submission date

  Scenario: Pet has no Adoption Applications
    Given I am logged into the admin panel as a Shelter administrator
    And a Pet has not received any Adoption Applications
    When I view the Adoption Applications for the Pet
    Then I see an empty list with a message indicating no applications have been received

  Scenario: Adoption Applications can be filtered by status
    Given I am logged into the admin panel as a Shelter administrator
    And a Pet has Adoption Applications in various statuses
    When I filter the Adoption Applications by status "pending"
    Then I see only the Adoption Applications with status "pending"
