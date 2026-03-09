# AGENTS

## Mission
Own render-only jobs, assets, storage, and lifecycle state for Chummer media outputs.

## Boundaries
- Keep all DTOs render-only.
- Do not introduce rules, session relay, lore, or provider-routing logic here.
- Treat narrative generation as upstream orchestration input, not media-factory ownership.

## Review guidelines
- Flag any DTO that mixes rendering with narrative-authoring or canon-generation as P1.
- Flag any dependency on engine implementation, play implementation, or UI-kit as P1.
- Flag asset lifecycle state machines without approval/persist/reject coverage as P1.
