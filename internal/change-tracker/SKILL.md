---
name: change-tracker
description: Review recent local edits across docs, code, design, architecture, and setup notes, map them to related project layers and modules, and update a concise change registry plus any obviously stale project notes. Use when the user asks what changed, wants lightweight change notes, needs to refresh docs after edits, wants to compare PRD or UI revisions, or needs help understanding recent modifications in a solo project.
---

# Change Tracker

Create or update `CHANGE_REGISTRY.md` so project changes become visible, categorized, and actionable instead of disappearing into diffs and chat history.

This skill is the bridge between "something changed" and "what needs to be updated now."

## Workflow

1. Inspect recent changes from the strongest available source:
   `git diff`, `git status`, recent commits, changed docs, design updates, or explicit user notes.
2. Map each change to one or more project layers using [change-mapping.md](references/change-mapping.md).
3. Determine which modules, docs, or local project notes are related.
4. Update `CHANGE_REGISTRY.md` using the template and keep entries concise.
5. If a changed area clearly affects `PROJECT_MASTER.md`, `SPRINT_BOARD.md`, `DECISION_LOG.md`, or `PRD_CORE.md`, update those files too.

## What To Capture

- source changes
- related layers
- related modules
- docs to refresh
- user-facing or system-facing consequences
- open questions
- status of follow-up work

## Trigger Patterns

- PRD changed: record product-level changes and docs to refresh
- UI changed: record related screens and frontend notes
- AI pipeline changed: record schema, backend, and architecture notes
- auth, env, or DB changed: record architecture, setup, and launch notes
- sprint changed: record priority changes and next-step notes

## Resources

- Template: [CHANGE_REGISTRY.template.md](assets/CHANGE_REGISTRY.template.md)
- Reference: [change-mapping.md](references/change-mapping.md)

When `CHANGE_REGISTRY.md` already exists, append a new dated entry or update the latest entry if the change set is still part of the same active iteration.
