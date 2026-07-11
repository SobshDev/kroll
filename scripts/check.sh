#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")/.."

echo "==> Checking formatting"
bunx prettier --check .

echo "==> Typechecking"
bun run typecheck

echo "==> Linting"
bun run lint

echo "==> Running tests"
bun run test

echo "==> Building production bundles"
bun run build

echo "==> All checks passed"
