---
name: data-auth-env
description: Create or refresh a canonical runtime foundation document covering data stores, core entities, authentication boundaries, environment variables, secret handling, and external service dependencies. Use when the user is setting up backend foundations, adding a database or auth system, clarifying env management, auditing deployment configuration, or trying to stop infrastructure choices from living only in code and memory.
---

# Data Auth Env

Create or update `architecture/DATA_AUTH_ENV.md` so the project's runtime foundation is explicit, reviewable, and stable across local, preview, and production environments.

This skill is the bridge between application logic and operational reality.

## Workflow

1. Read the current architecture docs, deployment config, env files, and relevant code.
2. Identify the core data entities, storage systems, auth provider, and runtime environments.
3. Use [data-auth-env-checklist.md](references/data-auth-env-checklist.md) to map the system.
4. Create or update `architecture/DATA_AUTH_ENV.md`.
5. If the runtime foundation changes setup or launch notes, update `CHANGE_REGISTRY.md` or `ops/RELEASE_READINESS.md`.

## What To Define

- data stores and major entities
- authentication and authorization boundaries
- environment variable inventory
- secret handling and provisioning
- external services and responsibilities
- differences between local, preview, and production

## Guardrails

- Keep one canonical env variable table.
- Separate user identity from product-domain entities.
- Record who creates or owns each critical service.
- If setup is fragile, document the order of operations.
- Do not place secret values in the doc; record names, purpose, and source only.

## Outputs

- `architecture/DATA_AUTH_ENV.md`
- optional updates to `CHANGE_REGISTRY.md` or `ops/RELEASE_READINESS.md`

## Resources

- Reference: [data-auth-env-checklist.md](references/data-auth-env-checklist.md)
- Template: [DATA_AUTH_ENV.template.md](assets/DATA_AUTH_ENV.template.md)

Use this document when setting up the project, debugging environment mismatches, or deciding whether the system is ready to publish.
