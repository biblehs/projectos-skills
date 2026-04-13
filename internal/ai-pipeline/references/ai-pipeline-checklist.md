Use this checklist when creating or refreshing `architecture/AI_PIPELINE.md`.

## Required Sections

- system thesis
- stage map
- responsibility split between deterministic logic and model logic
- input and output contracts
- prompt and schema versioning
- retrieval and knowledge policy
- evaluation and harness strategy
- persistence and backend integration
- observability and failure handling
- open questions

## Review Questions

- What specific product job does each stage perform?
- What data enters the stage, and in what schema?
- What must remain deterministic even if the model changes?
- What artifact leaves the stage, and who consumes it next?
- What makes retrieval bounded and explainable?
- How will regressions be detected before shipping?
- Where does the pipeline write state, logs, or artifacts?
- What is the fallback path when outputs are weak, invalid, or missing?
