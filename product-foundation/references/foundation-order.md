Use this packaged skill as the public wrapper for:

- `core-prd`
- `module-prd`
- `ui-mvp`

## Internal Order

1. clarify the product core
2. harden the first validating flow, assumptions, and open questions
3. split modules only where the boundaries are real
4. define the minimum validating interface
5. define the first-screen design direction and UI scope boundary

## Exit Criteria

This packaged skill is complete when:

- the product promise is explicit
- why now is explicit
- the primary user and first validating flow are explicit
- in-scope and out-of-scope are explicit
- assumptions and open questions are visible
- module boundaries are usable
- the UI MVP is narrow enough to guide execution
- the first screen has a clear primary surface, visual thesis, interaction model, and design acceptance criteria

## UI MVP Design Gate

Many early projects stall because the PRD is readable but the first interface is still vague. Before routing into execution, produce a UI MVP that can guide a real frontend pass.

The UI MVP should include:

- product interface promise: what the interface helps the user do in one sentence
- primary surface: choose from the product's core objects and user jobs, such as ledger, planner, calendar, timeline, editor, map, chat, workflow board, review queue, canvas, or hybrid
- first screen: what the user sees before any deep navigation
- core flow: the 3-7 steps that prove the product value
- required screens or panels: only the surfaces needed for the first validating flow
- required states: empty, loading, normal, error, completed, blocked, or review states as relevant
- interaction model: click, drag, command, natural language, timeline, node editing, or review workflow
- visual thesis: one sentence describing mood, material, density, and energy
- color and type direction: one dominant palette direction, one accent strategy, and typography intent
- motion thesis: 1-3 purposeful transitions that clarify state or hierarchy
- reference-site adaptation: visual references, adapted principles, replaced brand-specific details, and visual QA criteria when the user provides websites or screenshots
- not in MVP: visual surfaces, components, and interactions explicitly deferred
- acceptance criteria: what must be true before the UI can enter implementation

## Design Quality Rules

- Start from the working surface, not from decorative components.
- For product UI, prioritize orientation, status, and action over promotional copy.
- Prefer cardless layouts unless the card is itself the interaction.
- Do not default to canvas, dashboard, or card grids. Infer the surface from the product's core object and primary user decision.
- Avoid generic admin grids, thick borders everywhere, decorative glow, and repeated icon-heading-text blocks.
- Choose one strong visual idea for the first screen.
- Limit accents; use color to express action, status, risk, or focus.
- Define empty states that teach the user what to do next.
- Require responsive behavior for the primary surface instead of hiding core functionality on mobile.
- Treat motion as state communication, not decoration.
- If the UI could belong to any AI-generated dashboard, strengthen the visual thesis before execution.

## UI Boundary Rules

The UI MVP is not a full design system. Keep it narrow:

- define the first validating interface, not every later screen
- define visual direction, not final brand identity
- define component roles, not a complete component library
- define layout logic, not pixel-perfect production specs
- define enough color and typography guidance to avoid generic output
- define how reference websites should be adapted without copying protected brand, copy, or assets
- keep product-specific private details and advanced implementation machinery out of the open-source skill layer

## Suggest The Next Skill

- suggest `system-foundation` if AI, data, auth, or env complexity is already present
- suggest `execution-control` if the product is now clear enough to run the next sprint
