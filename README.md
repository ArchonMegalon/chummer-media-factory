# Chummer Media Factory

Render-only media and asset lifecycle service for Project Chummer.

This repo exists to own:

- asset/job lifecycle
- render pipelines
- storage adapters
- signed access URLs
- approval-state persistence for rendered assets

This repo must not own:

- rules math
- session relay
- Spider analysis
- lore retrieval
- provider routing
- narrative generation policy

Current status: scaffold-stage bootstrap. Contract-plane and render-only DTO extraction are still in progress.

Bootstrap layout:

- `Chummer.Media.Factory.slnx` is the repo solution entrypoint
- `src/Chummer.Media.Contracts` is the canonical render-only package plane scaffold
- `scripts/ai/verify.sh` restores and builds the bootstrap in isolation
