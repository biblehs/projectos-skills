Use this packaged skill as the public wrapper for:

- `decision-log`
- `change-tracker`
- `design-sync`
- `feedback-review`
- `release-readiness`

## Internal Order

1. inspect what changed locally
2. capture meaningful decision shifts
3. refresh design notes if screens or UI states changed
4. review feedback notes only if user notes or product signals should change scope
5. refresh release notes only if publishability is in question
6. after implementation work, run the note-refresh gate

## Exit Criteria

This packaged skill is complete when:

- important changes are visible
- major decisions are not trapped in memory or chat
- release scope is explicit when needed
- implementation changes have clear local notes where needed

## Suggest The Next Skill

- suggest `execution-control` if the next problem is prioritization
- suggest `product-foundation` if the product core itself needs revision
- suggest `system-foundation` if recent changes exposed missing runtime or AI boundaries

## Note-Refresh Gate

Run this gate after meaningful code, design, AI, data, or documentation changes.

Check:

- product notes: PRD, scope, assumptions, or module boundaries need a small update
- UI notes: first screen, interaction model, visual direction, states, or acceptance criteria need a small update
- architecture notes: AI stages, data model, auth, env, or runtime assumptions need a small update
- execution notes: sprint priority, milestone, blocker, or next task changed
- release notes: launch checklist or verification notes need a small update

Output:

- what changed
- why it changed
- related modules
- docs to refresh
- launch-note relevance
- next recommended guided layer

Do not update every document mechanically. Update only the docs whose truth changed.
