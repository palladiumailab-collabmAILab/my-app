# Short Commands

The owner should not need to remember long prompts.

Use these short commands with Codex:

| Say this | Codex should do |
| --- | --- |
| `inbox` | Process `AI Inbox` GitHub Issues and `30_KnowledgeVault/00_Inbox/`. |
| `整理` | Same as `inbox`. |
| `質問` | Answer `AI Question` GitHub Issues. |
| `全部` | Process inbox captures, questions, and local inbox notes. |
| `issue処理` | Inspect unprocessed GitHub Issues and choose the right action by label. |
| `URL整理` | Prioritize saved URLs and article captures. |

## Default Reports

GitHub issue lookup should use labels first. If labels are missing, use title prefixes:

- `[inbox]`
- `[question]`

After processing, Codex should report only:

- notes created
- notes updated
- issues answered
- items that still need the owner

## Manual Fallback

If the short command fails or context is unclear, use:

```text
GitHubの未処理issueを全部見て、必要なものだけvaultに反映して。
```

## Hook Note

Hooks can automate this further, but only after the basic issue workflow feels good.

Useful future hooks:

- When an `AI Inbox` issue is opened, add labels automatically.
- On a schedule, ask Codex or a GitHub Action to collect unprocessed issues.
- When processing finishes, comment on or close the issue.

Avoid adding full automation until the repository is private and secret handling is settled.
