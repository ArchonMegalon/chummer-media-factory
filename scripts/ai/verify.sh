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
test -f docs/chummer-media-factory.design.v1.md

dotnet restore Chummer.Media.Factory.slnx --nologo --verbosity quiet
dotnet build Chummer.Media.Factory.slnx --no-restore --configuration Release --nologo --verbosity quiet

echo "verify ok"
