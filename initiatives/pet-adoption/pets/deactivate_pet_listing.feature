@entry:admin.shelters @usecase:deactivate-listing @initiative:pet-adoption @integration:petmatch
Feature: Deactivate Pet Listing
  As a Shelter administrator
  I want to deactivate a Pet Listing when the Pet is no longer available
  So that Adopters do not apply for Pets that cannot be adopted

  Scenario: Pet Listing is deactivated
    Given I am logged into the admin panel as a Shelter administrator
    And a Pet has an active Listing
    When I deactivate the Pet Listing
    Then the Listing status changes to "inactive"
    And the Pet is removed from PetMatch recommendations

  Scenario: Pending Adoption Applications are notified on deactivation
    Given I am logged into the admin panel as a Shelter administrator
    And a Pet has pending Adoption Applications
    When I deactivate the Pet Listing
    Then all Adopters with pending Adoption Applications are notified
    And their Adoption Applications are marked as "cancelled"
