---
name: release-readiness
description: Create or refresh a release readiness document that states exactly what is intended to ship, what is ready, what is blocked, what is risky but optional, how the release will be verified, and how it can be rolled back. Use when the user asks if a project is ready to publish, wants a launch checklist, needs to separate ship blockers from cleanup, or wants to turn messy progress into a real release decision.
---

# Release Readiness

Create or update `ops/RELEASE_READINESS.md` so release conversations become explicit ship decisions instead of vague optimism.

This skill is most useful near launch, after a major sprint, or whenever the builder cannot clearly answer "what am I actually shipping?"

## Workflow

1. Read `PROJECT_MASTER.md`, `SPRINT_BOARD.md`, `CHANGE_REGISTRY.md`, and the most relevant architecture or design docs.
2. Identify the intended release slice and the exact surfaces that must work.
3. Use [release-readiness-checklist.md](references/release-readiness-checklist.md) to classify ready, blocked, risky, and deferred items.
4. Create or update `ops/RELEASE_READINESS.md`.
5. If the release is not real, push the implications back into `PROJECT_MASTER.md` or `SPRINT_BOARD.md`.

## What To Define

- intended release scope
- must-pass user journeys
- blockers
- risky but optional items
- deferred work
- verification plan
- rollback or containment plan

## Guardrails

- Do not confuse "coded" with "release ready."
- Separate blockers from polish.
- Unknowns count as risk until resolved.
- Name the exact user journeys that define ship quality.
- If rollback is impossible, record the containment strategy instead.

## Outputs

- `ops/RELEASE_READINESS.md`
- optional updates to `PROJECT_MASTER.md`, `SPRINT_BOARD.md`, or `CHANGE_REGISTRY.md`

## Resources

- Reference: [release-readiness-checklist.md](references/release-readiness-checklist.md)
- Template: [RELEASE_READINESS.template.md](assets/RELEASE_READINESS.template.md)

Use the readiness doc as the canonical source for release conversations, not a one-off launch note.
