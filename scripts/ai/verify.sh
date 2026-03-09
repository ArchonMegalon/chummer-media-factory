#!/usr/bin/env bash
set -euo pipefail

test -f README.md
test -f AGENTS.md
test -f WORKLIST.md
test -f docs/chummer-media-factory.design.v1.md
echo "verify ok"
