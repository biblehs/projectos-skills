Use this guide to decide which guided layer should be recommended next.

## Guided Layers

- `product-foundation`
- `system-foundation`
- `execution-control`
- `project-alignment`

## Internal Modules By Layer

- `product-foundation`: `core-prd`, `module-prd`, `ui-mvp`
- `system-foundation`: `ai-pipeline`, `data-auth-env`
- `execution-control`: `project-master`, `sprint-manager`, `worktrack-manager`, `project-operating-system`
- `project-alignment`: `decision-log`, `change-tracker`, `design-sync`, `release-readiness`, `feedback-review`

These modules are implementation details. Mention them only to make the next step transparent; do not ask the user to choose among them.

## Routing Rules

## Project State Classes

Use these states before recommending a guided layer:

- `new-project`: the user has an idea but no stable PRD, UI MVP, or system boundary
- `foundation-project`: product truth exists but the MVP flow, UI surface, modules, or system boundaries are still forming
- `implementation-project`: the next useful move is scoped local code work with validation notes
- `notes-refresh`: recent product, UI, code, AI, data, or release edits should be reflected in local project notes
- `launch-check`: the project is close enough to publish that a lightweight launch checklist is useful

## PRD Readiness Gate

Judge PRD readiness before choosing any downstream guided layer.

`idea-level`:

- the product exists mostly as a concept or ambition
- user, value, scope, and MVP loop are still blurry
- there is no clear why-now statement
- there is no stable `PRD_CORE.md`, or it reads like brainstorming

`foundation-level`:

- the core user, why now, product promise, core loop, and MVP boundaries are defined
- module boundaries are emerging or partially defined
- the first validating flow, assumptions, or UI MVP may still need tightening

`implementation-ready`:

- the core PRD is stable enough to guide build sequencing
- the MVP loop is explicit
- the first validating flow is explicit enough to guide the first implementation loop
- assumptions and open questions are visible enough that downstream skills do not need to invent product truth
- the first modules or system surfaces can be implemented without redefining the product every day

Default rule:

- if PRD readiness is `idea-level`, route to `product-foundation`
- if PRD readiness is only weak `foundation-level`, still prefer `product-foundation` before execution unless the immediate blocker is clearly technical
- only route straight to `execution-control` when PRD readiness is at least solid `foundation-level`

Recommend `product-foundation` when:

- `PRD_CORE.md` is missing or vague
- module boundaries are unclear
- the MVP interface is overgrown or undefined
- the first screen, primary surface, visual direction, or UI acceptance criteria are unclear
- execution is happening before product truth is stable

Recommend `system-foundation` when:

- AI stages materially affect the product
- auth, database, env, billing, or deployment complexity is real
- runtime complexity is outrunning the docs
- release discussions are blocked by unclear system boundaries

Recommend `execution-control` when:

- the project is moving but priorities are scattered
- the sprint has no clear center
- `PROJECT_MASTER.md` or sprint docs are stale or missing
- the user is ready to implement and needs a small task, explicit scope, non-goals, and validation checklist
- the user is managing several local project tracks and needs a clear center of gravity

Recommend `project-alignment` when:

- local project notes no longer match recent edits
- major decisions should be recorded before continuing
- launch notes or lightweight release checklist need a refresh
- the next question is "what should I update before the next task?"

## Tie-Break Rules

- If the project lacks product clarity, choose `product-foundation` before anything else.
- If the product is clear but execution is chaotic, choose `execution-control`.
- If the project is running and changing fast, choose `project-alignment`.
- If technical complexity is the main unknown, choose `system-foundation`.

## Recommended Output Shape

- observed current phase
- PRD readiness judgment
- recommended guided layer
- likely internal modules ProjectOS will use
- why it is the next best move
- expected outputs after running it
- optional backup guided layer
