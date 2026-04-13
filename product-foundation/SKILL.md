---
name: product-foundation
description: Create or refresh the product foundation by bundling product core, module boundaries, MVP interface definition, and first-screen design direction into one packaged skill. Use when the product promise is unclear, modules are blurry, the MVP surface is overgrown, the first UI is undefined or visually generic, or the user wants one skill instead of separately choosing core-prd, module-prd, and ui-mvp.
---

# Product Foundation

This packaged skill bundles:

- `core-prd`
- `module-prd`
- `ui-mvp`

Use it when the product needs clearer definition before more execution work is useful.

## Workflow

1. Read the current product and management docs.
2. Tighten or create `PRD_CORE.md`, making sure it includes why now, primary user, problem, first validating flow, scope, assumptions, and open questions.
3. Split the product into modules only where the boundaries are real.
4. Define or refresh `design/UI_MVP.md`, including the primary surface, first screen, interaction model, visual direction, UI scope boundary, and acceptance criteria.
5. Judge whether the UI MVP is strong enough to guide implementation without becoming a full product design system.
6. Judge whether the product is still foundation-level or has become implementation-ready.
7. Recommend whether `system-foundation`, `execution-control`, or `design-sync` should be the next follow-up.

## Default Outputs

- `PRD_CORE.md`
- `modules/MODULE_MAP.md`
- module PRDs when needed
- `design/UI_MVP.md`
- `design/FIRST_SCREEN_SPEC.md` when the first screen needs extra clarity

## Guardrails

- Do not over-modularize a small product.
- Do not let UI breadth outrun product clarity.
- Do not let the first UI become a generic dashboard-card mosaic.
- Prefer one primary surface and one memorable interaction model over many weak screens.
- Define visual and color direction without exposing proprietary product design details.
- Prefer one clear product story over many parallel product definitions.
- Do not treat the PRD as complete if it still lacks a concrete first validating flow.
- Do not treat the UI MVP as complete if the first screen, empty state, core flow, visual thesis, and design acceptance criteria are still vague.
- Make assumptions and open questions explicit instead of leaving them for later skills to guess.

## Resources

- Reference: [foundation-order.md](references/foundation-order.md)
