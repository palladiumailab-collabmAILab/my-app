---
name: knowledge-inbox
description: Process the user's short knowledge-management commands for this repository. Use when the user says terse commands such as "inbox", "整理", "質問", "全部", "issue処理", "GitHub inbox", or asks to move GitHub Issues / Obsidian inbox captures into the vault.
---

# Knowledge Inbox

## Overview

Use this skill to turn short user commands into the correct knowledge workflow. The user wants to avoid long prompts, so treat simple words as intentional commands when the conversation is about the GitHub Issue inbox or Obsidian vault.

## Command Aliases

| User says | Meaning |
| --- | --- |
| `inbox` | Process open GitHub Issues labeled `ai-inbox` and any notes in `vault/00_Inbox/`. |
| `整理` | Same as `inbox`; organize unprocessed captures into the vault. |
| `質問` | Process open GitHub Issues labeled `ai-question` or `needs-answer`. |
| `全部` | Process both inbox and question issues, plus local `vault/00_Inbox/`. |
| `issue処理` | Inspect unprocessed GitHub Issues and apply the right workflow by label. |
| `URL整理` | Prioritize URL/article captures and create/update resource notes. |

If the command is ambiguous outside this repository context, ask one short clarification. If the conversation is clearly about this knowledge system, execute the alias.

## Workflow

1. Read `vault/90_Meta/AI/github-mobile-inbox.md`.
2. Read `vault/90_Meta/AI/ai-operating-manual.md`.
3. For GitHub work, inspect relevant open issues by label:
   - `ai-inbox`
   - `needs-triage`
   - `ai-question`
   - `needs-answer`
4. If labels are missing, fall back to issue title prefixes:
   - `[inbox]`
   - `[question]`
5. For local captures, inspect `vault/00_Inbox/`.
6. Create or update the smallest useful set of notes in `vault/`.
7. Preserve source material unless the user explicitly asks to delete or close it.
8. Report only:
   - notes created
   - notes updated
   - issues answered or left pending
   - decisions needing the user

## Safety Rules

- Do not commit passwords, API keys, recovery codes, private tokens, or secrets.
- Do not copy membership numbers, customer numbers, reservation numbers, payment card details, or identity documents into `vault/`.
- If a GitHub Issue or note contains sensitive information, stop normal processing and tell the user to move it to a password manager or secure vault.
- Do not close GitHub Issues unless the user asks.
- Do not delete raw captures unless the user asks.
- Keep summaries short; the vault is the source of truth.

## Output Style

- Prefer action over explanation.
- Use concise Japanese.
- When no work was possible because GitHub access is missing, say exactly what is needed.
