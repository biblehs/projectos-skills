# Operating System Layout

Use this as the default local structure for a solo project.

## Canonical Files

- `PROJECT_MASTER.md`
- `PRD_CORE.md`
- `CHANGE_REGISTRY.md`
- `modules/`
- `architecture/`
- `design/`
- `feedback/`
- `execution/PLAN_NOTES.md`
- `execution/SPRINT_BOARD.md`
- `execution/WORKTRACK_BOARD.md`
- `execution/RESPONSIBILITY_MAP.md`
- `execution/DEPENDENCY_LOG.md`
- `decisions/DECISION_LOG.md`
- `ops/RELEASE_READINESS.md`
- `ops/TOOLING_AND_RHYTHM.md`

## Layer Logic

### Core

- project definition
- current focus
- milestones
- risks

### Product

- core PRD
- module PRDs
- change-aware scope notes

### Architecture

- frontend and backend boundaries
- AI pipeline
- data, auth, and env foundations
- data and service structure

### Design

- UI MVP definition
- design system
- screen inventory
- design sync notes

### Execution

- planning notes
- sprint board
- work-track board
- responsibility map
- dependency log
- change registry

### Feedback

- user notes and product signal triage
- iteration decisions
- deferred versus immediate changes

### Decision

- major choices and rationale

### Operations

- tooling
- working rhythm
- release discipline

## Non-Linear Rule

The system should start simple, but it must not assume the project will always stay linear.

- When the project still has one real lane, keep the sprint board as the main execution surface.
- When multiple real lanes appear, introduce `WORKTRACK_BOARD.md` and `RESPONSIBILITY_MAP.md`.
- Keep one center of gravity even in multi-lane work.
- Use local change notes to show which docs or modules should be refreshed.

## Key Management Rule

Every short-term task should be traceable upward:

- sprint item
- milestone
- module
- core PRD

Every meaningful change should also be traceable across local notes:

- source change
- related layer
- related module
- docs to refresh
