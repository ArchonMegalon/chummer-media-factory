#!/usr/bin/env bash
set -euo pipefail

export DOTNET_CLI_HOME="${DOTNET_CLI_HOME:-/tmp/chummer-media-factory-dotnet}"
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
export DOTNET_NOLOGO=1

test -f README.md
test -f AGENTS.md
test -f WORKLIST.md
test -f Directory.Build.props
test -f Chummer.Media.Factory.slnx
test -f src/Chummer.Media.Contracts/Chummer.Media.Contracts.csproj
test -f src/Chummer.Media.Contracts/ContractsAssemblyMarker.cs
test -f src/Chummer.Media.Contracts/README.md
test -f docs/chummer-media-factory.design.v1.md

namespace_drift="$(
  rg -n --glob '*.cs' '^namespace ' src/Chummer.Media.Contracts \
    | rg -v 'Chummer\.Media\.Contracts(\.|;)' || true
)"
if [[ -n "${namespace_drift}" ]]; then
  echo "namespace policy violation:"
  echo "${namespace_drift}"
  exit 1
fi

dto_boundary_drift="$(
  rg -n --glob '*.cs' '^(public )?(sealed )?(record|class|enum) .*?(Narrative|Story|Campaign|Session|Lore|Canon|Delivery|Spider)' src/Chummer.Media.Contracts || true
)"
if [[ -n "${dto_boundary_drift}" ]]; then
  echo "render-only boundary violation:"
  echo "${dto_boundary_drift}"
  exit 1
fi

dotnet restore Chummer.Media.Factory.slnx --nologo --verbosity quiet
dotnet build Chummer.Media.Factory.slnx --no-restore --configuration Release --nologo --verbosity quiet

echo "verify ok"
