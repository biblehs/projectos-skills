Use this packaged skill as the public wrapper for:

- `ai-pipeline`
- `data-auth-env`

## Internal Order

1. document AI stages only if they materially affect the product
2. document runtime, data, auth, env, and external services
3. identify whether release readiness is already the next concern

## Exit Criteria

This packaged skill is complete when:

- AI and deterministic boundaries are explicit
- env and secret names are explicit
- auth and data boundaries are explicit
- local, preview, and production differences are visible

## Suggest The Next Skill

- suggest `execution-control` if the main issue is now coordination
- suggest `project-alignment` if the project is already near release or changing fast
