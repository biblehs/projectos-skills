---
name: feedback-review
description: Turn user notes, launch observations, or external product signals into explicit local product decisions and scope adjustments. Use when the user asks to review feedback, decide what should change in the PRD or UI MVP, triage requests, or update project priorities based on evidence.
---

# Feedback Review

Create or update a canonical feedback review so new signals are evaluated calmly instead of causing random scope churn.

This skill helps a solo builder absorb feedback without abandoning the product center.

## Workflow

1. Gather the strongest available feedback signals: user notes, usage observations, launch notes, personal testing notes, or support requests.
2. Classify each signal using [feedback-triage.md](references/feedback-triage.md).
3. Create or update `feedback/FEEDBACK_REVIEW.md`.
4. Decide which signals should change `PRD_CORE.md`, the sprint, or design notes and which should simply be recorded.
5. If the project has multiple local work tracks, decide whether the signal belongs to the core lane, a support lane, or should wait entirely.
6. Prefer fewer, higher-confidence changes over reactive churn.

## Triage Rules

- not every piece of feedback deserves a scope change
- look for repeated patterns, not only loud anecdotes
- distinguish between core-product signals and support-layer noise
- record what changed in priority, not only what was heard
- do not let a new signal create a hidden side track without a clear reason

## Outputs

- `feedback/FEEDBACK_REVIEW.md`
- optional updates to `PRD_CORE.md`, `PROJECT_MASTER.md`, `SPRINT_BOARD.md`, or `CHANGE_REGISTRY.md`

## Resources

- Reference: [feedback-triage.md](references/feedback-triage.md)
- Template: [FEEDBACK_REVIEW.template.md](assets/FEEDBACK_REVIEW.template.md)

Use the review to protect the product center while still adapting to real demand.
