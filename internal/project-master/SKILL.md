---
name: project-master
description: Create or refresh a single local project control panel that summarizes project definition, current stage, milestones, module status, risks, and key links. Use when starting a new project workspace, consolidating scattered project documentation, resetting project management for a solo project, or when the user asks for a master doc, project dashboard, command center, project cockpit, or overall project status page.
---

# Project Master

Build or update one canonical `PROJECT_MASTER.md` that acts as the top-level control plane for a project.

Keep the document short enough to scan and useful enough to run the project from. The goal is not exhaustive documentation. The goal is one reliable entry point.

## Workflow

1. Inspect the existing project context before writing.
2. Find the best available sources of truth: `README`, PRDs, planning docs, architecture docs, sprint docs, issue notes, and recent commit history.
3. Distill the current project into the fields listed in [master-fields.md](references/master-fields.md).
4. Create `PROJECT_MASTER.md` if it does not exist, or update it in place if it already exists.
5. Prefer one canonical statement per topic. Remove duplication instead of adding parallel definitions.

## Writing Rules

- Keep the file decision-oriented, not narrative-heavy.
- State what the project is and what it is not.
- Include the current operating focus so the builder knows what matters now.
- Include milestones and module status, but avoid turning the file into a task dump.
- Include current risks and key links.
- If the repo already has good material, consolidate it instead of rewriting from scratch.

## Update Strategy

When a `PROJECT_MASTER.md` already exists:

- preserve useful structure
- update stale status and priorities
- remove duplicated or contradictory statements
- tighten links to the project's current source documents

## Resources

- Template: [PROJECT_MASTER.template.md](assets/PROJECT_MASTER.template.md)
- Reference: [master-fields.md](references/master-fields.md)

Use the template as a starting shape, not a rigid schema. Drop sections that do not help and add only what improves control of the project.
