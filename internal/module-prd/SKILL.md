---
name: module-prd
description: Split a core product into explicit module PRDs, define module boundaries, and keep a canonical module map in sync with the project. Use when the user asks to break a product into modules, define feature areas, create or refine module PRDs, reduce boundary confusion, or connect a core PRD to concrete execution units for a solo project.
---

# Module PRD

Create or update `modules/MODULE_MAP.md` plus module-specific PRD files that define what each module owns and what it should not absorb.

This skill is the bridge between the product core and execution planning.

## Workflow

1. Read the current `PRD_CORE.md`, project master, planning notes, and architecture docs.
2. Identify the main product modules using the guidance in [module-boundaries.md](references/module-boundaries.md).
3. Create or update `modules/MODULE_MAP.md`.
4. Create or update one PRD per meaningful module using the templates below.
5. Keep modules action-oriented and bounded. Do not create modules just because files happen to exist.

## Writing Rules

- Each module must have a clear purpose.
- Each module must have a clear in-scope and out-of-scope section.
- Prefer user-facing or system-facing functional boundaries over organizational buckets.
- A module should be big enough to matter and small enough to plan around.
- If two modules repeatedly change together, question whether the boundary is real.

## Outputs

- `modules/MODULE_MAP.md`
- one or more module PRDs such as `modules/UPLOAD_PRD.md`

## Resources

- Reference: [module-boundaries.md](references/module-boundaries.md)
- Template: [MODULE_MAP.template.md](assets/MODULE_MAP.template.md)
- Template: [MODULE_PRD.template.md](assets/MODULE_PRD.template.md)

Use these as defaults, not rigid schemas. Drop fields that do not improve clarity.
