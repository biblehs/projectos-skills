Use this packaged skill as the public wrapper for:

- `project-master`
- `sprint-manager`
- `worktrack-manager`
- `project-operating-system`

## Internal Order

1. establish or refresh the master control panel
2. establish or refresh the sprint
3. add a work-track board only if several local tracks are genuinely active
4. create the minimum missing local document structure if the workspace is disorganized
5. when code work is next, switch into implementation mode

## Exit Criteria

This packaged skill is complete when:

- one current center of gravity is visible
- the sprint is narrower than the overall project notes
- implementation tasks are small enough to finish and verify independently

## Implementation Mode

Use implementation mode when the user is ready to create or modify real code.

Before coding, define:

- task title
- related product module
- related system layer: UI, frontend logic, backend, database, AI, auth, env, docs, or release
- intended user-visible outcome
- explicit non-goals
- files or directories likely to be touched when known
- mock versus real integration decision
- validation checklist

During coding:

- keep the task inside its stated scope
- avoid opportunistic refactors unless required
- pause and re-route if implementation invalidates the PRD, UI MVP, or system foundation

After coding, require:

- validation result: lint, typecheck, tests, browser check, or manual check as appropriate
- changed module summary
- user-visible behavior summary
- known gaps or technical debt
- recommendation to run `project-alignment` if PRD, UI, architecture, sprint, or release notes should be refreshed

Implementation mode should produce both code progress and project-state progress.

## Suggest The Next Skill

- suggest `project-alignment` when local project notes, decisions, or launch notes need a refresh
- suggest `product-foundation` if execution is blocked by a fuzzy product core
