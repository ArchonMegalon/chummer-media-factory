# WORKLIST

- [completed] MF-001 Bootstrap repo, solution layout, and verification script.
- [completed] MF-002 Define `Chummer.Media.Contracts` as render-only contract families.
- [completed] MF-003 Split current media contracts into render/job/asset lifecycle vs narrative-authoring concerns.
- [completed] MF-004 Seed asset catalog, job queue, dedupe, and retry ownership boundaries.
- [completed] MF-005 Document service boundaries with `run-services`, `hub-registry`, `presentation`, and `play`.
- [completed] MF-006 Materialize milestone coverage for scaffold-stage extraction and queue truth.
- [completed] EXTRACT-001 Finalize `Chummer.Media.Contracts` package metadata and namespace policy; verify render-only DTO boundaries.

## Milestone coverage map

- MF-001: repo bootstrap and isolated verify path. Status: completed.
- MF-002: canonical render-only `Chummer.Media.Contracts` package plane. Status: completed.
- MF-003: DTO boundary split between render/job/asset lifecycle and upstream narrative/delivery/orchestration. Status: completed.
- MF-004: asset kernel contract seed for manifests, catalog, queue, dedupe, retry, approval/persist/reject lifecycle coverage. Status: completed.
- MF-005: cross-service boundary documentation with `chummer.run-services`, `hub-registry`, `presentation`, and `play`. Status: completed.
- MF-006: queue truth materialization for scaffold-stage extraction scope and auditor findings. Status: completed.
- EXTRACT-001: package metadata + namespace policy finalized for `Chummer.Media.Contracts`; no narrative-authoring or campaign/session DTOs in repo contracts. Status: completed.

## Queue truth

- Runtime queue source of truth: `.codex-studio/published/QUEUE.generated.yaml`.
- Queue items are now normalized as executable backlog statements mapped to MF-005 and extraction sub-slices.
- Remaining uncovered scope at scaffold stage is represented as runnable extraction and documentation work, not generic auditor prompts.
