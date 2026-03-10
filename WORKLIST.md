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
- [completed] EXTRACT-007 Publish runnable asset-kernel implementation backlog (AK-01..AK-06) for manifests, binary storage, render jobs, previews, TTL/retention, and lineage with explicit evidence gates.
- [completed] EXTRACT-008 Publish runnable DTO boundary split backlog (DS-01..DS-05) to keep `Chummer.Media.Contracts` render-only and move narrative/delivery/campaign-context concerns upstream.
- [queued] EXTRACT-006 Execute run-services seam cutover backlog to convert scaffold-stage seam ownership checks into live boundary acceptance evidence and handoff conformance.

## Milestone coverage map

- Milestone coverage snapshot date: 2026-03-10.
- MF-001: repo bootstrap and isolated verify path. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-09 (met). ETA confidence: high. Blockers: none.
- MF-002: canonical render-only `Chummer.Media.Contracts` package plane. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-09 (met). ETA confidence: high. Blockers: none.
- MF-003: DTO boundary split between render/job/asset lifecycle and upstream narrative/delivery/orchestration. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-09 (met). ETA confidence: high. Blockers: none.
- MF-004: asset kernel contract seed for manifests, catalog, queue, dedupe, retry, approval/persist/reject lifecycle coverage. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-09 (met). ETA confidence: high. Blockers: none.
- MF-005: cross-service boundary documentation with `chummer.run-services`, `hub-registry`, `presentation`, and `play`. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-09 (met). ETA confidence: high. Blockers: none.
- MF-006: queue truth materialization for scaffold-stage extraction scope and auditor findings. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-001: package metadata + namespace policy finalized for `Chummer.Media.Contracts`; no narrative-authoring or campaign/session DTOs in repo contracts. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-002: queue/asset lifecycle invariants documented for dedupe key/scope ownership, retry timing, and approval/persist/reject terminal-state expectations. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-003: executable asset-kernel completion slice added for manifest persistence wiring, binary storage adapter seam, preview linkage, TTL/retention sweep contract, and lineage traversal contract. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-004: renderer move-in sequence documented with ordered stage gates: deterministic documents first, portraits second, and video third after dependency checks. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-005: scaffold-stage exit criteria check captured with pass/fail evidence gates proving run-services no longer owns render-job and asset-lifecycle seam semantics. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-007: runnable shared asset-kernel implementation backlog published with execution tasks AK-01..AK-06 and evidence gates before renderer move-in completion. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-008: runnable DTO split boundary backlog published with execution tasks DS-01..DS-05 and verification gates for render-only contract ownership. Owner: media-factory. Status: completed. Completion: 100%. ETA target date: 2026-03-10 (met). ETA confidence: high. Blockers: none.
- EXTRACT-006: runnable seam cutover backlog published to enforce live-boundary acceptance evidence, run-services handoff conformance, and rehearsal-gated cutover before renderer migration completion. Owner: media-factory with run-services dependency. Status: queued. Completion: 15%. ETA target date: 2026-03-24. ETA confidence: medium. Blockers: run-services cutover rehearsal windows are not yet confirmed; live-boundary acceptance evidence cannot be finalized until ingress/egress handoff checks are executed.

## Queue truth

- Runtime queue source of truth: `.codex-studio/published/QUEUE.generated.yaml`.
- Queue normalization is in progress; generic auditor prompts are being replaced with extraction-scoped runnable backlog entries.
- Auditor canonical package-plane uncovered-scope slice (`project.uncovered_scope` and `project.queue_exhausted_with_uncovered_scope`, candidates `22418` and `22422`, published `2026-03-09` and `2026-03-10`) is mapped to `EXTRACT-001` and should remain closed as duplicate generic scope.
- Auditor asset-kernel uncovered-scope slice (`project.uncovered_scope`, candidate `22420`, published `2026-03-09` and `2026-03-10`) is mapped to `EXTRACT-007` (AK-01..AK-06) and should not be re-queued as a duplicate generic prompt.
- Auditor DTO split uncovered-scope slice (`project.uncovered_scope` and `project.queue_exhausted_with_uncovered_scope`, candidates `22419` and `22423`, published `2026-03-09` and `2026-03-10`) is mapped to `EXTRACT-008` (DS-01..DS-05) and should not remain as a duplicate generic prompt.
- Auditor seam-ownership uncovered-scope slice (`project.uncovered_scope` and `project.queue_exhausted_with_uncovered_scope`, candidates `22421` and `22425`, published `2026-03-09` and `2026-03-10`) is mapped to `EXTRACT-006` and should remain queued until live cutover evidence is complete.
- Auditor milestone-coverage incomplete slice (`project.milestone_coverage_incomplete`, candidate `22426`, published `2026-03-09` and `2026-03-10`) is satisfied by this explicit coverage map update with completion %, ETA date, confidence, and blockers.
- Remaining uncovered scope at scaffold stage is being converted into runnable extraction and documentation work from generic auditor prompts.
