# Contributing

## When to contribute

Contribute feature files after a ticket's implementation is merged, documenting the finalized requirements.

## How to Contribute

* Make a single pull request per ticket/feature.
* Define the name of the feature file based on the ticket title.
* Create a branch from main
* Create the feature file in the corresponding initiative folder
    * If no initiative folder exists, create one with a glossary.md file
* Translate the ticket requirements into Gherkin format in the feature file
* Open a Pull Request making sure to reference the ticket in the PR description
* Wait for review and merge

### Feature file rules

* Feature files **must** follow the [Gherkin syntax](https://cucumber.io/docs/gherkin/reference/)
* Feature description **must** include a User story under the format "As a [role], I want [feature] so that [benefit]" format."
* All domain objects referenced in the feature file:
    * **must** start with a capital letter.
    * **must** be defined in the initiative's glossary.md file.

Check the [template feature file](./template.feature) for reference.

## Feature Tagging Convention

All feature files **must** include tags at the feature level to enable discoverability, filtering, and automated tooling. Tags use the `@namespace:value` format.

### Required Tags

* **`@entry:<system>.<module>`** - Entry point to access the feature
  * Examples: `@entry:admin.shelters`, `@entry:web.settings`, `@entry:api.events`
  * Format: `<system>` (admin, web, api, mobile, etc.) + `<module>` (navigation path within system)

* **`@usecase:<operation>`** - The business operation or use case being performed
  * Examples: `@usecase:register-pet`, `@usecase:send-email`, `@usecase:update-preferences`
  * Use kebab-case with verbs that describe the business operation

### Optional Tags (add whenever possible)

* **`@initiative:<name>`** - Business initiative or project
  * Examples: `@initiative:pet-adoption`, `@initiative:smart-notifications`
  * Can be omitted if redundant with folder structure

* **`@integration:<system>`** - External system integration
  * Examples: `@integration:petmatch`, `@integration:sendcloud`, `@integration:pushhub`

### Example

```gherkin
@entry:admin.shelters @usecase:register-pet @initiative:pet-adoption @integration:petmatch
Feature: Register Pet
  As a Shelter administrator
  I want to register a new Pet on the platform
  So that potential Adopters can discover and apply to adopt it

  Scenario: Pet is registered and synced with PetMatch
    Given I am logged into the admin panel as a Shelter administrator
    When I register a new Pet with valid profile details
    Then the Pet Listing is created with status "available"
    And the Pet profile is uploaded to PetMatch
```
