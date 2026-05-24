# Triage Rules

## Classification

Use this decision table:

| If the note is about... | Put it in... |
| --- | --- |
| Raw thought or unresolved dump | `00_Inbox/` |
| A specific day | `01_Daily/` |
| A goal with an end date or finish state | `02_Projects/` |
| An ongoing responsibility | `03_Areas/` |
| External information or references | `04_Resources/` |
| A reusable idea in the owner's words | `05_Permanent/` |
| Completed or inactive material | `06_Archive/` |

## Title Rules

- Use descriptive titles.
- Avoid vague titles like `misc`, `notes`, `idea`.
- Keep dates in daily notes and meeting notes.
- For permanent notes, prefer claim-like titles such as `AI works best as an inbox processor`.

## Link Rules

- Link project notes to related resources and decisions.
- Link daily notes to touched project notes.
- Link permanent notes to source notes when useful.
- Do not create links just to look organized.

## Task Rules

Use Markdown checkboxes:

```markdown
- [ ] Next action
- [x] Completed action
```

Move tasks into the most relevant project or area note. Keep daily notes as a log of what surfaced, not the canonical task system.

## Privacy and Security

- Do not commit secrets, passwords, tokens, recovery codes, or private keys.
- If a note contains sensitive information, flag it before committing.
- Prefer placeholders like `[redacted-token]`.
- If a secret was pasted into the vault, stop and recommend rotation.

## When to Ask the Human

Ask before:

- Deleting notes
- Rewriting a personal memory in a way that may change meaning
- Publishing private information to GitHub
- Creating a new top-level taxonomy
- Turning ambiguous emotional input into a firm decision
