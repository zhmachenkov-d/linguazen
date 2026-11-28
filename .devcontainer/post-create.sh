#!/usr/bin/env bash
set -euo pipefail

echo "==> Dev container post-create"

# Safety net if initializeCommand was skipped (e.g. non-Dev-Containers workflows).
bash "$(dirname "${BASH_SOURCE[0]}")/ensure-env.sh"

# Tokenade: compacts tool output for Claude Code (hooks in .claude/settings.json).
# Per-project only; statusline off so nothing is written outside the repo config.
echo "==> Installing Tokenade"
npm install -g @tokenade/cli
# tokenade detects Claude Code via ~/.claude, which the VS Code extension only
# creates after postCreate runs; pre-create it so detection succeeds.
mkdir -p "$HOME/.claude"
(cd "$(dirname "${BASH_SOURCE[0]}")/.." \
  && TOKENADE_NO_STATUSLINE=1 tokenade install --per-project --only cursor)

echo "==> Dev container ready"