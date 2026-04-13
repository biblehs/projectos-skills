---
name: core-prd
description: Create or refresh a canonical core product requirements document that defines what the product is, who it serves, the core user value, current version scope, in-scope and out-of-scope boundaries, and the product questions that should govern later work. Use when starting a product, clarifying the core concept, tightening an MVP, repositioning an existing project, rewriting a vague PRD, or when the user asks to define the core product, positioning, core features, or version scope.
---

# Core PRD

Create or update `PRD_CORE.md` as the single source of truth for the product's core identity, current version scope, and first validating product flow.

This skill should reduce ambiguity about what the product is trying to do before deeper design, architecture, or execution work begins.

## Workflow

1. Read the strongest available product evidence first: current README, landing copy, existing PRDs, design briefs, architecture docs, issue threads, user notes, and recent product-facing commits.
2. Distill the product into the fields listed in [core-prd-fields.md](references/core-prd-fields.md).
3. Make sure the document answers five questions clearly: why this product, for whom, what problem or job it solves, what the first validating flow is, and what is explicitly out of scope now.
4. Create `PRD_CORE.md` if it does not exist, or update it in place if it already exists.
5. Make version scope explicit. A good core PRD should say what matters now, not only the long-term vision.
6. Resolve contradictory framing by choosing one canonical statement instead of preserving multiple parallel stories.

## Writing Rules

- State what the product is in one sentence.
- State why the product should exist now, not only what it is.
- State who the primary early user is and who is not the priority yet.
- State what it is not. This prevents category creep.
- Include the first validating user flow in plain language.
- Define the primary user value in human language, not feature language.
- Keep the current version scope narrow enough to guide near-term work.
- Separate current scope from later possibilities.
- Make assumptions, constraints, and open questions visible enough that downstream skills do not silently invent answers.
- Add canonical questions that later work should answer before expanding the system.
- Keep implementation detail light; the PRD should guide design and engineering without pretending to be an architecture spec.

## Update Strategy

When `PRD_CORE.md` already exists:

- preserve strong sections
- tighten fuzzy framing
- update current version scope, first validating flow, assumptions, and current success criteria
- remove stale ambitions that no longer match the real product

## Resources

- Template: [PRD_CORE.template.md](assets/PRD_CORE.template.md)
- Reference: [core-prd-fields.md](references/core-prd-fields.md)
- Reference: [prd-quality-bar.md](references/prd-quality-bar.md)

Use the template as a starting point, but keep the final document concise enough to be read before major project decisions.
