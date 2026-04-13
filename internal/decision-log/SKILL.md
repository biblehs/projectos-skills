---
name: decision-log
description: Capture or refresh major product, architecture, and execution decisions with rationale, consequences, and current validity. Use when the user asks to record a decision, explain why something was chosen, clean up repeated project debates, create an ADR-style log, or summarize important decisions from existing docs, code, or commit history.
---

# Decision Log

Create or update `DECISION_LOG.md` so key choices stop living only in chats, commits, and memory.

This skill is especially valuable when a project keeps revisiting the same arguments.

## Workflow

1. Inspect PRDs, architecture docs, planning docs, and recent code or commit evidence.
2. Identify decisions that materially shape the product or system.
3. Write each decision in a compact, repeatable format.
4. Prefer "what we decided and why" over long meeting-style narrative.
5. Update existing entries when the decision still stands but the reasoning or consequences have evolved.

## What Belongs In The Log

- project framing decisions
- architecture splits
- migration strategy choices
- AI versus deterministic responsibility choices
- release or rollback policy decisions
- scope decisions that affect later work

Do not log every small implementation choice.

## Format

Use the template in [DECISION_LOG.template.md](assets/DECISION_LOG.template.md) and the guidance in [decision-fields.md](references/decision-fields.md).

If no decision log exists, create one. If one exists, consolidate and de-duplicate it instead of appending more noise.
