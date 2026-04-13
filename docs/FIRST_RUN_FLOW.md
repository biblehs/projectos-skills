# First Run Flow

This file describes how the ProjectOS skill system should guide a real user from the first idea to the first implementation loop.

## Principle

The user should not need to understand the full 19-skill tree.

A new user should be able to say:

- "I want to build this product"
- "Here is my project idea"
- "Help me turn this into a real project"

The system should then choose the next guided layer from actual project state.

## First-Turn Default

Start with `project-guide`.

`project-guide` should:

1. read the idea and any existing workspace signals
2. judge PRD readiness as:
   - `idea-level`
   - `foundation-level`
   - `implementation-ready`
3. recommend exactly one next guided layer

## Default Routing

If the project is `idea-level`:

- route to `product-foundation`

If the project is weak `foundation-level`:

- still prefer `product-foundation`
- only skip it if the product truth is already stable and the immediate blocker is clearly technical

If the project is solid `foundation-level` or `implementation-ready`:

- route to `system-foundation` when AI or runtime complexity is the main unknown
- route to `execution-control` when the main need is implementation sequencing and focus

Use `project-alignment` when:

- meaningful changes landed
- local notes no longer match the implementation
- local project notes should be refreshed
- release notes need a light pass

## v0.1 Development Loop

When the user moves from planning into real implementation, use this loop:

1. `execution-control` defines one implementation task, related module, non-goals, and validation checklist.
2. code or design work happens inside that scope.
3. validation runs at the right level for the change.
4. `project-alignment` refreshes local notes where the change clearly affects PRD, UI MVP, architecture, execution, or release notes.
5. `project-guide` recommends the next guided layer from the updated state.

Do not treat code completion as the end of the loop. The next local project step should be clear.

## Human-Friendly Version

The user experience should feel like:

1. "Here is my idea."
2. "Here is the single best next move."
3. "Now your product foundation is stable."
4. "Now your system boundaries are clear."
5. "Now here is the first implementation sprint."
6. "Now here is how changes and release questions are kept aligned."

## Recommended Starter Chain

For most new AI products:

1. `project-guide`
2. `product-foundation`
3. `project-guide`
4. `system-foundation`
5. `execution-control`
6. `project-alignment`

This should be treated as the default new-project onboarding path for the local ProjectOS system.

## First UI MVP Gate

Before the first implementation sprint, the user should have:

- primary product surface
- first screen definition
- first validating user flow
- required states
- interaction model
- visual thesis
- color and typography direction
- reference-site adaptation notes when the user provides websites or screenshots
- UI scope boundary
- design acceptance criteria

If these are missing, route back to `product-foundation` before implementation.
