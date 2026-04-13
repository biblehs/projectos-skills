---
name: worktrack-manager
description: Create or refresh a local work-track board for solo projects that are no longer progressing in a single straight line. Use when the user is juggling several concurrent project tracks, separating the core build lane from support lanes, clarifying handoff points between their own tasks, or preventing parallel work from becoming hidden confusion.
---

# Work Track Manager

Create or update `execution/WORKTRACK_BOARD.md` and `execution/RESPONSIBILITY_MAP.md` so non-linear solo work stays visible instead of becoming hidden chaos.

This skill should be used whenever the project has more than one real active lane.

## Workflow

1. Read `PROJECT_MASTER.md`, `SPRINT_BOARD.md`, planning notes, and `CHANGE_REGISTRY.md`.
2. Identify the real work tracks, not just a list of tasks.
3. Use [worktrack-rules.md](references/worktrack-rules.md) to define core, support, and exploratory lanes.
4. Create or update `execution/WORKTRACK_BOARD.md` and `execution/RESPONSIBILITY_MAP.md`.
5. If the work-track map changes priorities, sync `PROJECT_MASTER.md` and `SPRINT_BOARD.md`.

## What To Define

- each real work track and its purpose
- the core work track versus support lanes
- responsibility and decision notes
- dependencies and integration points
- shared risks and blocked relationships

## Guardrails

- Not every task deserves to become a work track.
- One work track should be named as the current center of gravity.
- Parallelism is healthy only when sync points are explicit.
- If multiple lanes compete for the same time, code area, or design surface, record the conflict.
- Use this skill when the project is non-linear; do not force a fake linear plan.

## Outputs

- `execution/WORKTRACK_BOARD.md`
- `execution/RESPONSIBILITY_MAP.md`
- optional updates to `PROJECT_MASTER.md` or `SPRINT_BOARD.md`

## Resources

- Reference: [worktrack-rules.md](references/worktrack-rules.md)
- Template: [WORKTRACK_BOARD.template.md](assets/WORKTRACK_BOARD.template.md)
- Template: [RESPONSIBILITY_MAP.template.md](assets/RESPONSIBILITY_MAP.template.md)

Use these documents to keep solo project progress visible even when the project is moving on several fronts at once.
