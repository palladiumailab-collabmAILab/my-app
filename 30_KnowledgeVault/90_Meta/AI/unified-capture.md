# Unified Capture Prompt

Use one phrase everywhere:

```text
インボックス化して
```

The owner should not need to remember different prompts for Siri, Gemini, Web LLMs, URL drops, or manual notes.

## Full Prompt

When a tool needs more explicit instruction, use this full version:

```text
インボックス化して。
Obsidianの00_Inboxに入れる前提で、分類しすぎず、次の形式に整えて。

Title:
Source:
Raw:
Important:
Tasks:
Questions:
Links:
AI Request:
```

## Source Values

Use one of these:

- `siri`
- `gemini`
- `web-llm`
- `url-drop`
- `manual`
- `unknown`

If the source is obvious, fill it in. If not, use `unknown`.

## Output Format

```markdown
---
type: inbox
status: unprocessed
source: unknown
tags:
  - inbox
---

# Title

## Raw


## Important

- 

## Tasks

- [ ] 

## Questions

- 

## Links

- 

## AI Request

- [ ] Extract facts, decisions, tasks, and open questions.
- [ ] Move durable information to the right destination notes.
- [ ] Preserve this raw note unless it is clearly safe to archive.
```

## Minimal Version

For voice capture, the minimal version is enough:

```text
インボックス化して。本文は「...」。
```

On iPhone, create a Siri Shortcut named:

```text
インボックス化
```

Detailed setup lives in `iphone-siri-setup.md`.

## Triage Request

When asking Codex or another AI to organize the vault, use:

```text
30_KnowledgeVault/00_Inbox を整理して。
作成・更新したノート、未判断のもの、次アクションだけ短く報告して。
```
