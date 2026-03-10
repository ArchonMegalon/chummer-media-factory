# WORKLIST

- [completed] MF-001 Bootstrap repo, solution layout, and verification script.
- [completed] MF-002 Define `Chummer.Media.Contracts` as render-only contract families.
- [completed] MF-003 Split current media contracts into render/job/asset lifecycle vs narrative-authoring concerns.
- [completed] MF-004 Seed asset catalog, job queue, dedupe, and retry ownership boundaries.
- [completed] MF-005 Document service boundaries with `run-services`, `hub-registry`, `presentation`, and `play`.
- [completed] MF-006 Materialize milestone coverage for scaffold-stage extraction and queue truth.
- [completed] EXTRACT-001 Finalize `Chummer.Media.Contracts` package metadata and namespace policy; verify render-only DTO boundaries.
- [completed] EXTRACT-002 Add queue/asset lifecycle invariants doc covering dedupe key/scope ownership, retry timing, and approval/persist/reject terminal-state expectations.
- [completed] EXTRACT-003 Add executable backlog slice for asset kernel completion (manifest persistence wiring, binary storage adapter seam, preview linkage, TTL/retention sweep contract, lineage traversal contract).
- [completed] EXTRACT-004 Define renderer move-in sequence after asset kernel completion: deterministic documents first, portraits second, video third, with dependency gates per stage.
- [completed] EXTRACT-005 Capture scaffold-stage exit criteria check that proves run-services no longer owns the effective media seam for render-only jobs and asset lifecycle.
- [queued] EXTRACT-006 Execute run-services seam cutover backlog to convert scaffold-stage seam ownership checks into live boundary acceptance evidence and handoff conformance.

## Milestone coverage map

- MF-001: repo bootstrap and isolated verify path. Status: completed.
- MF-002: canonical render-only `Chummer.Media.Contracts` package plane. Status: completed.
- MF-003: DTO boundary split between render/job/asset lifecycle and upstream narrative/delivery/orchestration. Status: completed.
- MF-004: asset kernel contract seed for manifests, catalog, queue, dedupe, retry, approval/persist/reject lifecycle coverage. Status: completed.
- MF-005: cross-service boundary documentation with `chummer.run-services`, `hub-registry`, `presentation`, and `play`. Status: completed.
- MF-006: queue truth materialization for scaffold-stage extraction scope and auditor findings. Status: completed.
- EXTRACT-001: package metadata + namespace policy finalized for `Chummer.Media.Contracts`; no narrative-authoring or campaign/session DTOs in repo contracts. Status: completed.
- EXTRACT-002: queue/asset lifecycle invariants documented for dedupe key/scope ownership, retry timing, and approval/persist/reject terminal-state expectations. Status: completed.
- EXTRACT-003: executable asset-kernel completion slice added for manifest persistence wiring, binary storage adapter seam, preview linkage, TTL/retention sweep contract, and lineage traversal contract. Status: completed.
- EXTRACT-004: renderer move-in sequence documented with ordered stage gates: deterministic documents first, portraits second, and video third after dependency checks. Status: completed.
- EXTRACT-005: scaffold-stage exit criteria check captured with pass/fail evidence gates proving run-services no longer owns render-job and asset-lifecycle seam semantics. Status: completed.
- EXTRACT-006: runnable seam cutover backlog published to enforce live-boundary acceptance evidence, run-services handoff conformance, and rehearsal-gated cutover before renderer migration completion. Status: queued.

## Queue truth

- Runtime queue source of truth: `.codex-studio/published/QUEUE.generated.yaml`.
- Queue normalization is in progress; generic auditor prompts are being replaced with extraction-scoped runnable backlog entries.
- Remaining uncovered scope at scaffold stage is being converted into runnable extraction and documentation work from generic auditor prompts.
