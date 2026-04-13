---
name: ai-pipeline
description: Create or refresh a canonical AI pipeline document that defines where models are used, where deterministic logic must stay in control, what prompt and schema contracts exist, how retrieval and knowledge injection are bounded, how outputs are evaluated, and how AI stages connect to backend state. Use when the user is designing or revising AI features, adding prompt chains, introducing knowledge retrieval, building eval or harness coverage, or trying to stop an AI-heavy product from becoming structurally vague.
---

# AI Pipeline

Create or update `architecture/AI_PIPELINE.md` so AI behavior is treated as a system with contracts, boundaries, and validation, not as an opaque layer.

This skill is most useful once a product has real AI responsibility or when model behavior is starting to leak into too many places.

## Workflow

1. Read `PRD_CORE.md`, relevant module docs, architecture docs, and the current implementation.
2. Identify every stage where model output materially affects the product.
3. Map the pipeline using the checklist in [ai-pipeline-checklist.md](references/ai-pipeline-checklist.md).
4. Create or update `architecture/AI_PIPELINE.md` using the template below.
5. If the pipeline changes product behavior, update `DECISION_LOG.md` or `CHANGE_REGISTRY.md`.

## What To Define

- the product job of each AI stage
- which logic stays deterministic
- input and output schemas
- prompt and schema versioning
- retrieval and knowledge boundaries
- harness or evaluation strategy
- persistence, observability, and failure handling

## Guardrails

- Do not write "the AI handles reasoning" unless the stage contract is explicit.
- Separate model judgment from deterministic orchestration.
- Retrieval should be bounded, explainable, and tied to a product purpose.
- If a stage can fail silently, document the detection and fallback path.
- If multiple model stages exist, define handoff artifacts between them.

## Outputs

- `architecture/AI_PIPELINE.md`
- optional updates to `DECISION_LOG.md` or `CHANGE_REGISTRY.md`

## Resources

- Reference: [ai-pipeline-checklist.md](references/ai-pipeline-checklist.md)
- Template: [AI_PIPELINE.template.md](assets/AI_PIPELINE.template.md)

Use the pipeline document to make AI behavior reviewable by product, engineering, and release decisions.
