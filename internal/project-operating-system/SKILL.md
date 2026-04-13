---
name: project-operating-system
description: Set up or refresh a lightweight local project operating structure for a solo builder, including a project master, sprint board, decision log, and document structure for PRD, UI MVP, architecture, and module definitions. Use when the user asks to organize a project workspace, systematize planning, reduce project chaos, or create a repeatable local setup around code, docs, design, and execution.
---

# Project Operating System

This skill is the setup helper for the full local ProjectOS workspace.

Use it to create the initial document structure, re-stabilize a messy project, or reshape the local system when the work is no longer moving in a single straight line.

## Default Outputs

- `PROJECT_MASTER.md`
- `PRD_CORE.md`
- `CHANGE_REGISTRY.md`
- `feedback/FEEDBACK_REVIEW.md`
- `design/UI_MVP.md`
- module map and module PRDs
- architecture docs
- `architecture/DATA_AUTH_ENV.md`
- design inventory
- planning notes
- sprint board
- work-track board
- responsibility map
- decision log
- release readiness
- dependency log
- operating rhythm doc

## Workflow

1. Read the existing project materials and determine whether this is a new setup or a refresh.
2. Create the doc skeleton described in [operating-system-layout.md](references/operating-system-layout.md).
3. Use the `core-prd`, `module-prd`, `project-master`, `ui-mvp`, `design-sync`, `ai-pipeline`, `data-auth-env`, `sprint-manager`, `worktrack-manager`, `decision-log`, `change-tracker`, `feedback-review`, and `release-readiness` patterns when generating or refreshing their respective files.
4. Keep one canonical document per management layer.
5. Write enough detail to make the system usable immediately, but avoid turning it into bureaucracy.

## Design Rules

- one master doc
- one core PRD
- one change registry
- one screen inventory
- one UI MVP definition
- one feedback review
- one planning notes file
- one sprint board
- one work-track board when the project is genuinely multi-lane
- one decision log
- explicit module boundaries
- low duplication
- stable links between layers

## Non-Linear Solo Usage

- Do not force a fake linear plan when several lanes are genuinely active.
- Keep one named center of gravity even when support or exploratory tracks exist.
- Use `worktrack-manager` once more than one real lane is active.
- Use `change-tracker` to reflect important changes in local project notes.
- Use `feedback-review` to prevent external signals from randomly hijacking the current focus.

## Resources

- Start with [operating-system-layout.md](references/operating-system-layout.md)
- Use [workspace-layout.txt](assets/workspace-layout.txt) as the default folder map

When the workspace already has project docs, consolidate them instead of introducing parallel replacements with slightly different names.
