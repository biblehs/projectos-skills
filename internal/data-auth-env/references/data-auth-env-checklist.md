Use this checklist when creating or refreshing `architecture/DATA_AUTH_ENV.md`.

## Required Sections

- runtime summary
- data stores and entities
- auth and access boundaries
- environment variable inventory
- secret handling
- external services
- local, preview, and production differences
- setup and verification flow
- risks and known gaps

## Review Questions

- What are the system's canonical stores and major entities?
- Which service handles authentication, and where is authorization enforced?
- Which env vars are required by runtime, build, and local development?
- How are secrets provisioned and rotated?
- What changes between local, preview, and production?
- What setup order causes the least confusion for a new collaborator?
