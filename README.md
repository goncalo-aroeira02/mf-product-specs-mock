# product-specs

This repository serves as a version-controlled source of truth for requirements and acceptance criteria using [Gherkin](https://cucumber.io/docs/gherkin/reference/) feature files, fostering a shared vocabulary between Product, Development, and QA.

## Why This Exists
* **Shared vocabulary**: promotes a common language between Product, Development, and QA
* **Refinement**: incentivizes structured dialogue around requirements before development begins
* **Traceability**: preserves full history of requirement changes, transparent and auditable
* **Standardization**: encourages consistent, human-readable, testable requirements across initiatives
* **E2E readiness**: acceptance criteria are captured upfront, no need to backtrack when building e2e tests
* **Automations**: structured format enables future integrations with testing frameworks and other tools

## How It Works

* Product and Development collaborate on Gherkin acceptance criteria during refinement
* Development builds the feature
* Once merged, the acceptance criteria are added to this repo as a feature file

The repo becomes the source of truth for what was built and why.

## Structure

```
└── initiatives/
    └── <initiative-name>/
        ├── glossary.md
        ├── <entity>/
        │   └── <feature-name>.feature
        └── <entity>/
            └── <feature-name>.feature
```

## Adoption

This is opt-in. Teams adopt it only if they see value. Start small - try it on one feature and see if it helps.

## Quick Links

* [Contributing Guidelines](./CONTRIBUTING.md)
