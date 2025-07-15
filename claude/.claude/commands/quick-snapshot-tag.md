---
title: 'Fast Tag/Snapshot Task'
read_only: true
type: 'command'
---

# Create new fast tag/snapshot tag

This task should perform a Git commit using the same logic as the quick commit task (.claude/commands/quick-commit.md).
It should then create a Git tag using the format `snapshot-YYYYMMDD-HHMMSS` and push it to the default origin.