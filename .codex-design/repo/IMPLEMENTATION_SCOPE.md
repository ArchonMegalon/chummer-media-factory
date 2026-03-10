
# Media-Factory Implementation Scope

`chummer-media-factory` owns `Chummer.Media.Contracts`, render jobs, provider adapters, asset manifests, preview generation, binary storage abstraction, and asset lifecycle execution.

Must not own:
- campaign or session truth
- rules evaluation or RuntimeLock generation
- approvals policy, canon policy, or delivery policy
- general AI routing or broad assistant prompting
- public UI or shared design-system primitives

Current split focus:
- publish `Chummer.Media.Contracts` as the sole media execution contract plane
- land one shared job/asset/lifecycle substrate before renderer-specific sprawl
- cut document, portrait, and bounded video execution out of `chummer.run-services`
