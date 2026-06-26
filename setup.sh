#!/bin/bash
# ──────────────────────────────────────────────────────────────
# OH.io · Claude Working Directory — automated setup (Steps 1 & 2)
# Creates your workspace folder + standard subfolders, and a
# CLAUDE.md pre-filled with the correct path. Safe to re-run:
# it never overwrites an existing CLAUDE.md.
# ──────────────────────────────────────────────────────────────

# Where your workspace lives. Change the name/location if you like.
WORKDIR="$HOME/Documents/Claude CoWork"

# 1) Folder structure
mkdir -p "$WORKDIR/claude-context" "$WORKDIR/portcos"

# 2) CLAUDE.md — only created if it doesn't already exist
if [ -f "$WORKDIR/CLAUDE.md" ]; then
  echo "↪  CLAUDE.md already exists — left untouched."
else
  printf 'At the start of any non-trivial task, read %s/claude-context/INDEX.md and follow its guidance\n' "$WORKDIR" > "$WORKDIR/CLAUDE.md"
  echo "✓  Created CLAUDE.md"
fi

echo "✓  Workspace ready:"
echo "   $WORKDIR"
echo "   ├── CLAUDE.md"
echo "   ├── claude-context/"
echo "   └── portcos/"
echo ""
echo "Next: open this folder in Cowork and run the Step 3 setup interview."

# Reveal the folder in Finder
open "$WORKDIR"
