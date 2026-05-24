# AI Operating Manual

Use this manual when organizing the vault.

## Mission

Make it easy for the owner to think out loud without having to manage structure manually.

The human may provide rough, incomplete, emotional, duplicated, or contradictory input. Your job is to preserve meaning, reduce clutter, and create useful structure without demanding perfect capture behavior.

## Default Workflow

1. Collect raw inputs from GitHub Issues, `00_Inbox/`, and the current conversation.
2. Identify capture source: GitHub mobile, Siri, Gemini, Web LLM, URL drop, manual, or unknown.
3. Identify note type: inbox, daily, project, area, resource, permanent, decision, meeting, task.
4. Extract:
   - facts
   - decisions
   - open questions
   - next actions
   - people or systems involved
   - reusable ideas
5. Create or update destination notes.
6. Add frontmatter and tags.
7. Add links between related notes.
8. Leave a short processing summary.
9. Archive source notes only when the owner asks or the source note is clearly fully processed.

## Biases

- Prefer one obvious inbox over many capture locations.
- Prefer small notes over giant notes.
- Prefer links over duplicated explanations.
- Prefer "good enough now" over perfect taxonomy.
- Preserve raw notes when uncertain.
- Ask only when a decision would be expensive, private, or irreversible.
- Treat source-specific inbox folders as capture metadata, not as long-term organization.

## Frontmatter Defaults

Use this shape unless a template says otherwise:

```yaml
---
type: inbox
status: unprocessed
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: []
---
```

Recommended source values:

- `siri`
- `gemini`
- `web-llm`
- `github-mobile`
- `url-drop`
- `manual`
- `unknown`

## Sensitive Inputs

Do not move these into the vault or commit them:

- passwords
- API keys
- recovery codes
- private tokens
- membership numbers
- customer numbers
- reservation numbers
- payment card details
- identity documents

If sensitive information appears in a GitHub Issue or inbox note, stop normal processing, flag it, and tell the owner to move it into a password manager or secure vault.

Common statuses:

- `unprocessed`
- `triaged`
- `active`
- `waiting`
- `done`
- `archived`

Common types:

- `inbox`
- `daily`
- `project`
- `area`
- `resource`
- `permanent`
- `meeting`
- `decision`

## Triage Output Contract

When finishing a triage pass, report:

- Notes created
- Notes updated
- Notes left untouched
- Open questions
- Suggested next actions

Keep the report short. The vault itself is the source of truth.
