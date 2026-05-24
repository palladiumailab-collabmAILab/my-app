# iPhone Siri Setup

Goal: speak to Siri and create an inbox Markdown note with minimal friction.

Use this phrase:

```text
インボックス化して
```

## Recommended Sync Route

Use GitHub as the source of truth and use Working Copy on iPhone for Git operations.

Why:

- This repository is already GitHub-oriented.
- Obsidian's official sync guide lists Working Copy as an iOS option for Git-based vault sync.
- Obsidian's official guide warns that iCloud Drive with Windows can lead to duplication or corruption, so avoid making iCloud the main cross-platform sync layer.

## Apps to Install

- Obsidian for iOS
- Shortcuts, already installed on most iPhones
- Working Copy, for GitHub clone, commit, pull, and push

## One-Time Setup

1. In Working Copy, clone the GitHub repository that contains this vault.
2. Link or expose the cloned `30_KnowledgeVault/` folder so Obsidian can open it as a vault.
3. In Obsidian on iPhone, open the vault from the Working Copy location if available.
4. Confirm that this folder exists on iPhone:

```text
30_KnowledgeVault/00_Inbox/Siri/
```

If Obsidian cannot open the Working Copy folder cleanly, keep Working Copy as the Git sync app and use the Files app/Shortcuts to save Markdown captures into the cloned repository.

## Shortcut: Voice to Inbox

Create a shortcut named:

```text
インボックス化
```

Suggested actions:

1. Dictate Text
2. Get Current Date
3. Format Date as `yyyyMMdd-HHmmss`
4. Text
5. Save File

Use this text body:

```markdown
---
type: inbox
status: unprocessed
source: siri
created: [[CURRENT_DATE]]
updated: [[CURRENT_DATE]]
tags:
  - inbox
  - capture/siri
---

# Siri capture [[STAMP]]

## Raw

[[DICTATED_TEXT]]

## Important

- 

## Tasks

- [ ] 

## Questions

- 

## Links

- 

## AI Request

- [ ] Treat this as an "インボックス化して" capture.
- [ ] Clean obvious transcription errors.
- [ ] Extract facts, decisions, tasks, and open questions.
- [ ] Move durable information to the right destination notes.
```

Save path:

```text
30_KnowledgeVault/00_Inbox/Siri/[[STAMP]]-siri-capture.md
```

## Siri Phrase

After creating the shortcut, say:

```text
Hey Siri, インボックス化
```

Then dictate the thought.

## Daily Use

1. Say `Hey Siri, インボックス化`.
2. Speak naturally.
3. Let the shortcut create a Markdown file.
4. Later, use Working Copy to commit and push.
5. Ask Codex:

```text
30_KnowledgeVault/00_Inbox を整理して。
作成・更新したノート、未判断のもの、次アクションだけ短く報告して。
```

## Fallback

If direct file saving is annoying on iPhone, use this fallback:

1. Siri shortcut saves captures into one Apple Note named `Inbox Capture`.
2. Periodically paste the note contents into `30_KnowledgeVault/00_Inbox/Siri/`.
3. Ask Codex to split and organize it.

This is less elegant, but still preserves the main rule: capture first, organize later.
