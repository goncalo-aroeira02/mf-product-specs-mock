@entry:admin.shelters @usecase:register-pet @initiative:pet-adoption @integration:petmatch
Feature: Register Pet
  As a Shelter administrator
  I want to register a new Pet on the platform
  So that potential Adopters can discover and apply to adopt it

  When a Pet is registered, its profile is created locally and synchronized with PetMatch
  so that PetMatch can include the Pet in its lifestyle-based recommendations.

  Scenario: Pet is registered and synced with PetMatch
    Given I am logged into the admin panel as a Shelter administrator
    When I register a new Pet with valid profile details
    Then the Pet Listing is created with status "available"
    And the Pet profile is uploaded to PetMatch

  Scenario: Pet registration fails to sync with PetMatch
    Given I am logged into the admin panel as a Shelter administrator
    When I register a new Pet with valid profile details
    But the Pet profile can't be uploaded to PetMatch
    Then the Pet Listing is created with status "available"
    And I see a warning that PetMatch sync failed

  Scenario: Pet with incomplete profile is not registered
    Given I am logged into the admin panel as a Shelter administrator
    When I attempt to register a Pet without providing required fields
    Then the Pet is not registered
    And I see a validation error listing the missing fields
