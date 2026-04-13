@entry:web.pets @usecase:submit-application @initiative:pet-adoption
Feature: Submit Adoption Application
  As a registered user
  I want to submit an Adoption Application for a Pet
  So that the Shelter can evaluate whether I am a suitable Adopter

  Scenario: Adoption Application is submitted successfully
    Given I am logged into the platform as a registered user
    And I am viewing an available Pet Listing
    When I fill in the Adoption Application form and submit it
    Then the Adoption Application is created with status "pending"
    And the Shelter is notified of the new Adoption Application

  Scenario: Adoption Application is rejected for duplicate submission
    Given I am logged into the platform as a registered user
    And I already have a pending Adoption Application for this Pet
    When I attempt to submit another Adoption Application for the same Pet
    Then the submission is rejected
    And I see a message indicating I already have a pending application

  Scenario: Adoption Application cannot be submitted for inactive Listing
    Given I am logged into the platform as a registered user
    And the Pet Listing has been deactivated
    When I attempt to submit an Adoption Application
    Then the submission is rejected
    And I see a message indicating the Pet is no longer available
