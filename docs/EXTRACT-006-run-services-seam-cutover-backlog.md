# EXTRACT-006 Run-Services Seam Cutover Backlog

## Objective

Execute the scaffold-to-live seam cutover so `chummer-media-factory` becomes the effective owner of render-job and asset-lifecycle execution semantics while `chummer.run-services` is limited to orchestration ingress and result consumption.

## Runnable backlog

1. SEAM-01 Publish media-factory seam acceptance contract
- Define acceptance checks for intake idempotency, lifecycle terminality, retention transitions, and lineage lookup owned by `Chummer.Media.Contracts`.
- Record evidence locations and pass/fail criteria so run-services does not remain the semantic source of truth.

2. SEAM-02 Add run-services handoff conformance matrix
- Enumerate required upstream calls and payloads into media-factory for each media type class.
- Enumerate forbidden ownership paths in run-services: provider execution, lifecycle mutation authority, and queue semantic definition.
- Evidence: `docs/EXTRACT-006-SEAM-02-run-services-handoff-conformance-matrix.md`

3. SEAM-03 Add executable cutover rehearsal checklist
- Run a dry-run sequence covering submit, retry, approval/persist/reject, retention expiry, and signed-URL metadata egress.
- Capture blocker outputs as follow-on queue items if any seam check fails.

4. SEAM-04 Gate renderer move-in on seam evidence
- Require EXTRACT-006 evidence completion before any document/portrait/video execution migration is marked done.
- Keep renderer migration blocked if seam ownership checks regress.

## Completion evidence

- Updated seam conformance artifact with explicit pass/fail outcomes.
- Queue entries for any failed criterion with owner and next action.
- Worklist status moved from queued to completed only after all checks pass.
