# GitHub Mobile Inbox

This is the simplest mobile-first workflow.

The owner uses the GitHub mobile app as the only manual surface:

```text
GitHub app -> New issue -> AI Inbox or AI Question
```

Obsidian becomes the organized archive. GitHub Issues become the messy front door.

## Japanese Quick Start

スマホではGitHubアプリだけ触ればよい。

### 入れる

1. GitHubアプリを開く。
2. このリポジトリを開く。
3. Issuesを開く。
4. New issueを押す。
5. `AI Inbox` を選ぶ。
6. 記事、URL、画像、スクショ、メモを貼る。
7. Submitする。

### 聞き出す

1. GitHubアプリを開く。
2. Issuesを開く。
3. New issueを押す。
4. `AI Question` を選ぶ。
5. 普通の言葉で質問する。
6. Submitする。

即答がほしいだけならGeminiなどのモバイルLLMに聞く。保存済みの知識を踏まえて答えてほしいなら `AI Question` issueを使う。

Siriは主に「GitHubを開く」「音声入力する」補助として使う。知識ベース検索の主役は `AI Question` issueにする。

## Why This Route

- The owner already plans to install GitHub on iPhone and Android.
- GitHub Issues accept text, URLs, Markdown, and image attachments.
- The owner does not need to browse the vault folder on mobile.
- AI can later read issues, sort them, and update the vault.

## Two Issue Types

| Template | Use For | Labels |
| --- | --- | --- |
| `AI Inbox` | Paste articles, URLs, screenshots, images, thoughts, LLM outputs | `ai-inbox`, `needs-triage` |
| `AI Question` | Ask AI to retrieve or explain something from the vault | `ai-question`, `needs-answer` |

## Capture Flow

1. Open the GitHub app.
2. Open this repository.
3. Go to Issues.
4. Tap New issue.
5. Choose `AI Inbox`.
6. Paste the article, URL, image, screenshot, or rough thought.
7. Submit.

The owner does not need to classify the issue. Labels and template fields are enough.

## Retrieval Flow

1. Open the GitHub app.
2. Open this repository.
3. Go to Issues.
4. Tap New issue.
5. Choose `AI Question`.
6. Ask the question in normal language.
7. Submit.

AI later searches the vault and answers in an issue comment or creates/updates a note.

## Do Not Paste

Do not paste these into GitHub Issues, even in a private repository:

- passwords
- API keys
- recovery codes
- private tokens
- membership numbers
- customer numbers
- reservation numbers
- identity documents
- payment card details

Store those in a password manager or secure vault instead. If one appears in an issue, do not copy it into `30_KnowledgeVault/`; label it for sensitive review and ask the owner to move it.

## AI Processing Rule

When asked to process GitHub mobile inbox issues:

1. Read open issues labeled `ai-inbox` or `ai-question`.
2. If labels are missing, use title prefixes: `[inbox]` and `[question]`.
3. For inbox issues, extract facts, tasks, questions, decisions, URLs, and images.
4. Create or update notes in `30_KnowledgeVault/`.
5. For question issues, search relevant notes and answer in the issue or summarize in the final report.
6. Leave processed issues open unless the owner asks to close them.
7. Never commit secrets. If an issue includes a secret, stop and flag it.

## Owner Commands

Use short commands with Codex:

```text
inbox
```

```text
質問
```

```text
全部
```

More aliases live in `short-commands.md`.

## Mobile Retrieval Recommendation

For immediate answers on mobile, use Gemini or another mobile LLM.

For answers that should use the saved knowledge base, create an `AI Question` issue. AI can then search the vault and answer with context.
