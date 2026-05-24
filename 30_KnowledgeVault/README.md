# Knowledge Vault

This folder is an Obsidian vault designed for low-friction capture and AI-assisted organization.

Open `30_KnowledgeVault/` directly in Obsidian. Keep this folder in GitHub so notes, templates, and operating rules can be versioned together.

## Quick Start

普段の使い方はこれだけで大丈夫です。

1. Obsidian でこの `30_KnowledgeVault/` フォルダを開く。
2. スマホではGitHubアプリを開き、Issueに記事、URL、画像、メモを貼る。
3. 投げ込みは `AI Inbox` issue、聞き出しは `AI Question` issueを使う。
4. まとまったら Codex に「GitHubの未処理issueをvaultに整理して」と頼む。
5. AI は `90_Meta/AI/` のルールに沿って、プロジェクト、エリア、リソース、永続ノートへ仕分ける。
6. 作業後に GitHub へ commit/push して履歴とバックアップを残す。

雑でいいです。入口を雑に保つほど、この vault は長続きします。

## AI Gateway

情報の出入り口は人間ではなく AI に寄せます。

| Entrance | Use For | Inbox Path |
| --- | --- | --- |
| GitHub Issues | スマホからの記事、URL、画像、相談、聞き出し依頼 | GitHub `AI Inbox` / `AI Question` |
| Siri | iPhoneでの音声メモ、歩きながらの思いつき | `00_Inbox/Siri/` |
| Gemini | Androidでの相談、音声入力、モバイル要約 | `00_Inbox/Gemini/` |
| Web LLM | ChatGPT、Claude、Gemini Webなどとの相談ログ | `00_Inbox/WebLLM/` |
| URL Drop | ネット記事、動画、URLだけの保存 | `00_Inbox/URLs/` |
| Manual | どうしても直接直したい時の保険 | `00_Inbox/Manual/` |

いちばん簡単なスマホ運用は `90_Meta/AI/github-mobile-inbox.md` を見てください。
詳しい使い分けは `90_Meta/AI/entrypoints.md` を見てください。
統一した頼み方は `90_Meta/AI/unified-capture.md` にあります。

## How to Use

1. Put anything unprocessed in `00_Inbox/`.
2. Let AI triage inbox notes into projects, areas, resources, or permanent notes.
3. Use `01_Daily/` for day-level logs and quick context.
4. Use `02_Projects/` for outcomes with an end state.
5. Use `03_Areas/` for ongoing responsibilities.
6. Use `04_Resources/` for references, clips, sources, and learning material.
7. Use `05_Permanent/` for durable ideas written in your own words.
8. Move stale or completed material to `06_Archive/`.

## Folder Model

| Folder | Purpose |
| --- | --- |
| `00_Inbox/` | Raw thoughts, pasted conversations, voice memo transcripts, screenshots described in text, rough questions |
| `01_Daily/` | Daily notes, work logs, context breadcrumbs |
| `02_Projects/` | Active projects with clear outcomes |
| `03_Areas/` | Ongoing responsibilities without a finish line |
| `04_Resources/` | External references and topic collections |
| `05_Permanent/` | Stable evergreen notes, principles, decisions, distilled insights |
| `06_Archive/` | Inactive projects and old material |
| `90_Meta/` | Templates, AI instructions, vault governance |

## AI Default Job

When asked to organize notes, AI should:

1. Read unprocessed notes in `00_Inbox/`.
2. Extract facts, decisions, questions, tasks, and reusable ideas.
3. Create or update the smallest useful set of notes.
4. Add links between related notes.
5. Preserve the original raw note unless it is explicitly safe to archive.
6. Summarize what changed and what still needs human judgment.

Detailed rules live in `90_Meta/AI/`.

## GitHub Sync

Recommended flow:

```powershell
git status --short
git add 30_KnowledgeVault .gitignore
git commit -m "docs: add knowledge vault foundation"
git push
```

Avoid committing Obsidian workspace state. This repository ignores `30_KnowledgeVault/.obsidian/workspace*.json`.
