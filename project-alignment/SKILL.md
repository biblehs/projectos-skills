---
name: project-alignment
description: Keep local project notes aligned by bundling lightweight change notes, decision notes, design sync notes, feedback review, and release notes into one packaged skill. Use after meaningful edits when a solo project needs its PRD, UI MVP, architecture notes, sprint notes, or launch checklist refreshed before the next task.
---

# Project Alignment

This packaged skill bundles:

- `decision-log`
- `change-tracker`
- `design-sync`
- `feedback-review`
- `release-readiness`

Use it when the project already exists and the main need is to keep local notes coherent after meaningful edits.

## Workflow

1. Inspect recent edits, decisions, design notes, feedback notes, and release notes.
2. Update `CHANGE_REGISTRY.md`.
3. Update `DECISION_LOG.md` when real choices have shifted.
4. Update `design/SCREEN_INVENTORY.md` or UI notes when real UI surfaces changed.
5. Update `feedback/FEEDBACK_REVIEW.md` only when user notes or product signals should change scope.
6. Update `ops/RELEASE_READINESS.md` only when a lightweight launch checklist is useful.
7. After implementation work, note which local docs should be refreshed before the next task.
8. Recommend the next guided layer if the project has become more of a product, system, or execution problem.

## Default Outputs

- `CHANGE_REGISTRY.md`
- `decisions/DECISION_LOG.md`
- `design/SCREEN_INVENTORY.md` when relevant
- `feedback/FEEDBACK_REVIEW.md` when relevant
- `ops/RELEASE_READINESS.md` when relevant
- local note-refresh summary after meaningful implementation work

## Guardrails

- Do not create busywork logs when nothing meaningful changed.
- Keep release notes lightweight.
- Do not turn note refresh into a heavy audit.
- Do not treat code completion as complete project progress if PRD, UI MVP, architecture, sprint, or release notes clearly need a small update.

## Resources

- Reference: [alignment-routing.md](references/alignment-routing.md)
