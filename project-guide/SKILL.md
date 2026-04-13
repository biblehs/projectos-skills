---
name: project-guide
description: Review the current project state and recommend the next best ProjectOS step, including the packaged layer and internal capability modules that matter next. Use when the user does not want to choose among many skills manually, wants the system to suggest the next step from actual progress, or needs one entrypoint for a local AI-assisted project workflow.
---

# Project Guide

Review the project as it exists now and recommend the next best ProjectOS step, not every possible skill.

This is the primary entry point for the full local ProjectOS skill system.

## Workflow

1. Read the strongest available local project signals:
   `PROJECT_MASTER.md`, `PRD_CORE.md`, `design/UI_MVP.md`, architecture docs, sprint notes, release notes, and current repo state when available.
2. Before routing, assess whether the project is new, foundation-level, implementation-ready, actively changing, or release-facing.
3. Use [routing-rules.md](references/routing-rules.md) to determine the current project phase and what is missing or stale.
4. Recommend exactly one next guided layer by default.
5. Name the internal capability modules ProjectOS is likely to use inside that layer.
6. Optionally name one backup guided layer if the next step depends on a close judgment call.
7. Explain the reason in terms of current project state, not generic theory.

## Guided Layers It Routes To

- `product-foundation`
- `system-foundation`
- `execution-control`
- `project-alignment`

`project-guide` should mention the likely underlying internal skills when helpful, but the user-facing recommendation should stay at the guided-layer level.

## Output Format

Always include:

- current observed phase
- PRD readiness judgment
- recommended next guided layer
- likely internal capability modules
- why now
- expected output after running it
- optional backup recommendation

## Guardrails

- Do not list five equally plausible next steps.
- Prefer one recommendation with a clear reason.
- At true project start, prefer tightening the product truth before routing into execution.
- Recommend `execution-control` when the project is moving but losing focus.
- Recommend `project-alignment` when local project notes, decisions, or release notes need a refresh after meaningful edits.
- Recommend `product-foundation` when the product core, module boundaries, or MVP surface is still unclear.
- Recommend `system-foundation` when AI, auth, data, env, or runtime complexity is outrunning the docs.
- Recommend `execution-control` implementation mode when product and system foundations are clear enough and the next need is scoped local code work.

## Resources

- Reference: [routing-rules.md](references/routing-rules.md)
