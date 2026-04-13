---
name: ui-mvp
description: Create or refresh a UI MVP definition that turns the core product promise into the smallest credible set of screens, states, interaction decisions, first-screen direction, and visual reference guidance needed to validate the product. Use when the user asks to define an MVP interface, reduce UI scope, decide which screens must ship first, use a reference website for visual direction, connect product positioning to UI structure, or keep design work from expanding faster than the product can support.
---

# UI MVP

Create or update `design/UI_MVP.md` so interface work stays aligned to product validation instead of expanding into premature completeness.

This skill is the bridge between product definition and actual screen-level design priorities.

## Workflow

1. Read `PRD_CORE.md`, relevant module docs, `PROJECT_MASTER.md`, and any existing design inventory.
2. Identify the smallest user journey that proves the product promise.
3. Use [ui-mvp-rules.md](references/ui-mvp-rules.md) to decide which screens and states are essential.
4. If the user provides reference websites or asks to copy a visual style, use [reference-site-adaptation.md](references/reference-site-adaptation.md) to extract reusable design direction without copying protected brand, copy, or assets.
5. Create or update `design/UI_MVP.md`.
6. If the MVP surface changes, sync `design/SCREEN_INVENTORY.md`, `SPRINT_BOARD.md`, or `CHANGE_REGISTRY.md`.

## What To Define

- the primary validating user flow
- the minimum screens required
- critical states and trust moments
- first-screen visual direction
- reference-site takeaways when provided
- what is intentionally excluded from the MVP
- what can stay rough versus what must feel reliable

## Guardrails

- MVP means smallest validating interface, not smallest number of pixels.
- Every screen must support a specific product risk or promise.
- Remove decorative or later-stage surfaces that do not change validation.
- Do not default to canvas, dashboard, or card grids. Choose the interface shape from the product's core objects and user jobs.
- Use reference sites as design inputs, not as permission to impersonate a brand or copy protected assets.
- Record intentional omissions so they do not reappear as ambiguity.

## Outputs

- `design/UI_MVP.md`
- optional updates to `design/SCREEN_INVENTORY.md`, `SPRINT_BOARD.md`, or `CHANGE_REGISTRY.md`

## Resources

- Reference: [ui-mvp-rules.md](references/ui-mvp-rules.md)
- Reference: [reference-site-adaptation.md](references/reference-site-adaptation.md)
- Template: [UI_MVP.template.md](assets/UI_MVP.template.md)

Use this document to keep design, frontend, and scope discussions anchored to the same MVP definition.
