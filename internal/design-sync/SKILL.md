---
name: design-sync
description: Keep product intent, design references, and frontend implementation connected by maintaining a concise screen inventory. Use when the user asks to review UI changes, refresh design notes, map screens to product modules, or update screen inventory after design or frontend changes.
---

# Design Sync

Create or update `design/SCREEN_INVENTORY.md` and related notes so UI work stays connected to PRD and implementation.

This skill is the bridge between product intent, design files, and shipped frontend behavior.

## Workflow

1. Read the current core PRD, module docs, project master, and any existing design docs.
2. Inspect the active frontend routes and screen-level implementation state.
3. If Figma links or design references exist, map them to implemented screens. If they do not exist, record the gap explicitly.
4. Update `design/SCREEN_INVENTORY.md` using the template and rules below.
5. If the UI changes imply product or sprint changes, update `CHANGE_REGISTRY.md` or `SPRINT_BOARD.md` as needed.

## What To Capture

- screen name
- route or location
- product purpose
- related module
- design source or Figma link
- implementation status
- notable mismatch or open question

## Design Sync Rules

- Treat missing design references as a real gap.
- Treat UI changes that alter user understanding as product-level changes, not merely visual changes.
- If implementation diverges from design for a valid reason, record the reason instead of pretending the mismatch does not exist.

## Resources

- Reference: [design-sync-rules.md](references/design-sync-rules.md)
- Template: [SCREEN_INVENTORY.template.md](assets/SCREEN_INVENTORY.template.md)

Use the inventory as the source of truth for UI state, not a loose side note.
