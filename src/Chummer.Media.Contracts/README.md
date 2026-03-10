# Chummer.Media.Contracts

Canonical render-only DTO package for `chummer-media-factory`.

Contract families:

- render requests (`Rendering/*`)
- render job queue state (`Jobs/*`)
- media asset manifest and lifecycle state (`Assets/*`)

Namespace policy:

- root namespace must be `Chummer.Media.Contracts`
- all public contract namespaces must stay under:
  - `Chummer.Media.Contracts.Rendering`
  - `Chummer.Media.Contracts.Jobs`
  - `Chummer.Media.Contracts.Assets`

Out of scope:

- narrative authoring
- campaign/session context
- approval policy and delivery policy
- rules/canon authoring and provider-routing policy
