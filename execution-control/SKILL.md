---
name: execution-control
description: Create or refresh the local execution layer by bundling the project master, focused sprint plan, local work-track map, and implementation-mode guardrails into one packaged skill. Use when a solo project is moving but losing focus, priorities are scattered, real code work needs scope and verification gates, or the user wants one entry point instead of separately choosing execution helper skills.
---

# Execution Control

This packaged skill bundles:

- `project-master`
- `sprint-manager`
- `worktrack-manager`
- `project-operating-system`

Use it when the problem is not product definition or system architecture, but local execution control.

## Workflow

1. Read the current project state, active docs, and repo signals.
2. Update or create `PROJECT_MASTER.md`.
3. Update or create `execution/SPRINT_BOARD.md`.
4. If the project has several active local tracks, update or create `execution/WORKTRACK_BOARD.md`.
5. If the project lacks a usable local document structure, use `project-operating-system` patterns to set up the minimum needed files.
6. When the user is entering real implementation, define an implementation task with scope, non-goals, related modules, validation checks, and expected note-refresh follow-up.
7. Recommend whether `project-alignment` should be the next follow-up.

## Default Outputs

- `PROJECT_MASTER.md`
- `execution/SPRINT_BOARD.md`
- optional `execution/WORKTRACK_BOARD.md`
- implementation task scope, validation checklist, and follow-up route when code work is next

## Guardrails

- Keep one visible center of gravity.
- Do not enter implementation without a small task, explicit non-goals, and verification plan.
- After implementation, route to `project-alignment` when local PRD, UI, architecture, sprint, or release notes should be refreshed.

## Resources

- Reference: [execution-routing.md](references/execution-routing.md)
