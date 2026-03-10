# Media-factory review context

Use this checklist for changes in `chummer-media-factory`.

## 1. Scope and boundary fit

Pass only if the change stays inside render execution ownership:

* render jobs and job state
* manifests and binary storage seams
* previews/thumbnails and signed asset access
* lifecycle controls (approval, persist, reject, retention, TTL, supersession, lineage)
* provider adapters for document/image/video rendering

Fail as P1 if any change introduces:

* narrative authoring, canon generation, lore synthesis, or campaign/session semantics
* rules math, RuntimeLock concerns, or engine implementation coupling
* play/presentation UI behavior or UI-kit dependency
* run-services orchestration ownership inside media-factory

## 2. DTO and contract integrity

Pass only if `Chummer.Media.Contracts` remains render-only and package-owned here.

Fail as P1 if DTOs include or depend on:

* campaign/session truth, delivery policy, publication policy, or moderation policy
* provider SDK types, HTTP framework types, or persistence entities
* engine/play/presentation implementation models

Also fail if any cross-repo contract family is duplicated instead of consumed via canonical package ownership in `CONTRACT_SETS.yaml`.

## 3. Lifecycle state-machine coverage

Asset lifecycle changes must include explicit handling and verification for:

* `approval`
* `persist`
* `reject`

Fail as P1 if lifecycle transitions are added or altered without full terminal-state coverage, retention/TTL handling, and lineage impact checks.

## 4. Mirror and design sync

Pass only if local `.codex-design/` remains aligned with approved Chummer design mirrors.

Fail if:

* required product/repo/review mirror files are missing
* local scope or review guidance contradicts mirrored product canon
* queue/worklist references regress to duplicate generic uncovered-scope prompts already mapped to executable backlog

## 5. Queue and uncovered-scope normalization

For auditor findings `22420` and `22424`, treat generic asset-kernel uncovered-scope prompts as satisfied by `EXTRACT-007` (`AK-01..AK-06`) unless new evidence reopens the slice.

Fail if new queue items reintroduce those exact generic prompts without new blocker evidence.

## 6. Verification expectations

Before completion:

* run `scripts/ai/verify.sh`
* ensure contract/boundary checks pass
* ensure queue/worklist state is consistent with completed scope

## 7. Review summary format

Every substantive review should report:

* scope fit: pass/fail
* boundary fit: pass/fail
* contract fit: pass/fail
* lifecycle fit: pass/fail
* mirror fit: pass/fail
* queue normalization fit: pass/fail
* required design follow-up: yes/no
