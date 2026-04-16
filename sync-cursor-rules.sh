#!/bin/sh
set -eu

SRC=".cursorrules"
TARGETS=".github/copilot-instructions.md .github/.curosorrules REAL_ESTATE_DEV.agent.md"

if [ ! -f "$SRC" ]; then
  echo "Error: source file '$SRC' not found." >&2
  exit 1
fi

for target in $TARGETS; do
  mkdir -p "$(dirname "$target")"
  cp "$SRC" "$target"
done

echo "Synced '$SRC' to: $TARGETS"
