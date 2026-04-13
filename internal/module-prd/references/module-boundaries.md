# Module Boundaries

Use this guide when deciding what counts as a module.

## Good Module Traits

- meaningful user or system purpose
- stable enough to plan around
- clear dependencies
- clear in-scope and out-of-scope boundaries
- likely to own multiple related tasks over time

## Weak Module Signals

- "this is just a folder"
- "this is one page with no reusable purpose"
- "this only exists because one engineer touched it"

## Default Module Questions

1. What job does this module perform?
2. What does it own?
3. What does it intentionally not own?
4. What are its key states or flows?
5. What other modules does it depend on?
6. What are the current risks?

## Common Module Types

- onboarding and intent capture
- upload and intake
- report core
- account and retention
- recommendations
- admin and metrics
