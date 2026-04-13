# Design Sync Rules

## Core Principle

Every important screen should be traceable across:

- product purpose
- design source
- implementation state

## Minimum Fields

- screen name
- route or file location
- purpose
- related module
- design source
- status
- sync notes

## When To Update

- after meaningful UI changes
- after Figma updates
- after route or flow changes
- after MVP scope changes that alter which screens matter

## Common Mismatch Types

- design changed but code did not
- code changed but docs did not
- PRD intent changed but screen purpose stayed stale
- implementation added intermediate states not tracked in design docs
