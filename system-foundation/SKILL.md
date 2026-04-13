---
name: system-foundation
description: Create or refresh the system foundation by bundling AI pipeline boundaries and runtime foundation docs into one packaged skill. Use when the project has real AI behavior, auth, database, environment, billing, or deployment complexity and the user wants one entry point instead of separately choosing ai-pipeline and data-auth-env.
---

# System Foundation

This packaged skill bundles:

- `ai-pipeline`
- `data-auth-env`

Use it when runtime complexity is becoming real enough that execution and release decisions need better system documentation.

## Workflow

1. Read the current implementation, architecture docs, and runtime config.
2. Update or create `architecture/AI_PIPELINE.md` when AI stages materially affect the product.
3. Update or create `architecture/DATA_AUTH_ENV.md`.
4. Recommend whether `release-readiness` should be the next follow-up.

## Default Outputs

- `architecture/AI_PIPELINE.md`
- `architecture/DATA_AUTH_ENV.md`

## Guardrails

- Do not invent AI stages that the product does not truly use.
- Keep deterministic and model-owned logic separate.
- Keep one canonical environment and secret map.

## Resources

- Reference: [system-foundation-order.md](references/system-foundation-order.md)
