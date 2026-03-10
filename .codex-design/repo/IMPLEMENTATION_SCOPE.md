# Media factory implementation scope

## Mission

`chummer-media-factory` owns render execution, render jobs, previews, manifests, asset lifecycle, provider adapters, and signed asset access for Chummer media workloads.

## Owns

* `Chummer.Media.Contracts`
* render job intake and state
* previews and thumbnails
* manifests and asset receipts
* asset lifecycle, retention, pinning, supersession
* provider adapters for document/image/video execution
* signed asset access and media storage discipline

## Must not own

* campaign or session truth
* rules math
* approvals policy
* publication/moderation workflows
* play/client UX
* general AI orchestration
* service identity or relay

## Current focus

* become a real source tree and package, not just a scaffold repo
* extract media execution contracts out of `chummer.run-services`
* land the shared job/asset kernel before domain-specific rendering features
* onboard full mirror coverage from `chummer-design`

## Milestone spine

* M0 contract canon
* M1 asset/job kernel
* M2 document rendering
* M3 portrait forge
* M4 bounded video
* M5 template/style integration
* M6 run-services cutover
* M7 storage/DR/scale
* M8 finished media plant

## Worker rule

If the feature is about rendering, previews, manifests, or asset lifecycle, it belongs here.
If it is about campaign meaning, approvals, delivery, or rules truth, it does not.
