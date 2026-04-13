# Change Mapping

Use this guide to classify recent changes and determine what else should be synced.

## Layer Map

### Product

Typical inputs:

- PRD edits
- feature scope changes
- positioning changes

Usually sync:

- `PRD_CORE.md`
- module PRDs
- `PROJECT_MASTER.md`
- `DECISION_LOG.md`

### Design

Typical inputs:

- screen structure changes
- flow changes
- Figma updates
- UI visual direction changes

Usually sync:

- screen inventory
- design system docs
- frontend module docs
- sprint board if near-term work changes

### Frontend

Typical inputs:

- page logic
- component behavior
- state management

Usually sync:

- architecture docs
- module docs
- sprint board
- change registry

### Backend

Typical inputs:

- routes
- services
- repositories
- auth logic

Usually sync:

- system architecture
- module docs
- ops or release docs if runtime behavior changes

### AI

Typical inputs:

- prompts
- schema
- model routing
- artifact flow
- eval harness

Usually sync:

- AI pipeline docs
- decision log
- release-readiness notes
- change registry

### Data And Ops

Typical inputs:

- database schema
- auth provider changes
- env or secret changes
- deployment changes

Usually sync:

- architecture docs
- ops docs
- publish checklist
- decision log if the change is structural

### Execution Notes

Typical inputs:

- sprint priority shifts
- dependency changes
- next-task changes

Usually sync:

- `PROJECT_MASTER.md`
- `execution/SPRINT_BOARD.md`
- `CHANGE_REGISTRY.md`

## Questions To Ask

1. What changed directly?
2. What layer does it belong to?
3. Which modules are touched?
4. Which management docs are now stale?
5. Does this change the current sprint, milestone, or release readiness?
