# GitHub Sync Guide

The vault is stored in this repository so GitHub can provide history, backup, branch review, and multi-device sync.

## Recommended Repository Model

- Keep `30_KnowledgeVault/` as the Obsidian vault root.
- Commit templates, AI rules, and stable Obsidian settings.
- Ignore local workspace layout and cache files.
- Use short, frequent commits for knowledge changes.

## Daily Sync

```powershell
git status --short
git pull --ff-only
git add vault
git commit -m "docs: update knowledge vault"
git push
```

If there is nothing to commit, skip the commit.

## Conflict Policy

When conflicts happen:

1. Preserve both sides first.
2. Prefer the most recent human-authored content.
3. Re-run AI triage after resolving conflicts.
4. Do not resolve by deleting large sections unless the owner confirms.

## Obsidian Files to Commit

Usually commit:

- `30_KnowledgeVault/.obsidian/app.json`
- `30_KnowledgeVault/.obsidian/core-plugins.json`
- `30_KnowledgeVault/.obsidian/daily-notes.json`
- `30_KnowledgeVault/.obsidian/templates.json`
- `30_KnowledgeVault/.obsidian/appearance.json`

Usually ignore:

- `30_KnowledgeVault/.obsidian/workspace*.json`
- `30_KnowledgeVault/.obsidian/cache/`
- plugin `data.json` files unless intentionally shared
- `.trash/`

## First-Time Setup

1. Create a private GitHub repository unless the notes are intentionally public.
2. Push this repository.
3. Open `30_KnowledgeVault/` in Obsidian.
4. Enable Daily notes and Templates if Obsidian does not enable them automatically.
5. Pull before editing on another device.
6. Commit and push after each meaningful session.
