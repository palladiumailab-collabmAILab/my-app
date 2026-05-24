# AI Entry Points

This vault is designed so the owner does not need to manage structure manually.

The owner speaks, asks, pastes, or drops links. AI turns those raw inputs into usable notes.

## Architecture

```text
GitHub Issues / Siri / Gemini / Web LLM / URL Drop / Manual
  -> 00_Inbox/{source}/
  -> AI triage
  -> Projects / Areas / Resources / Permanent Notes
  -> GitHub history
```

## One Prompt Everywhere

Use this phrase for every entrance:

```text
インボックス化して
```

If the AI needs more detail, use:

```text
インボックス化して。
Obsidianの00_Inboxに入れる前提で、分類しすぎず、Title、Source、Raw、Important、Tasks、Questions、Links、AI Requestに整えて。
```

See `unified-capture.md` for the canonical format.

## 0. GitHub Mobile

Use GitHub Issues as the main mobile surface.

Recommended default:

- `AI Inbox` issue for articles, URLs, images, screenshots, thoughts, and LLM outputs.
- `AI Question` issue for asking AI to retrieve information from the vault.

AI handling:

- Treat GitHub Issues as the messy front door.
- Convert useful issue contents into vault notes.
- Reply to question issues with searched context when requested.
- Keep original issue content as source material.

See `github-mobile-inbox.md` for the simple workflow.

## 1. Siri

Use Siri for fast voice capture on iPhone.

Recommended capture format:

```text
インボックス化して。本文は「raw dictated thought」。
```

Destination:

- `00_Inbox/Siri/`

AI handling:

- Clean transcription errors lightly.
- Preserve emotional nuance and uncertainty.
- Extract tasks only when the owner clearly implies action.
- Do not turn casual thought into a firm decision without confirmation.

## 2. Gemini Mobile

Use Gemini on Android for mobile conversations, quick summaries, and voice-first thinking.

Recommended prompt:

```text
インボックス化して。
```

Destination:

- `00_Inbox/Gemini/`

AI handling:

- Treat Gemini output as an intermediate summary, not as final truth.
- Preserve the original question when possible.
- Convert useful answers into resource or permanent notes only after checking context.

## 3. Web LLM

Use Web LLMs for deeper thinking, research conversations, design discussions, and code/project planning.

Recommended ending prompt for any LLM:

```text
インボックス化して。
```

Destination:

- `00_Inbox/WebLLM/`

AI handling:

- Separate the user's original intent from the model's suggestions.
- Mark uncertain claims as unverified.
- Extract reusable insights into permanent notes only when they are not tied to a single conversation.

## 4. URL Drop

Use URL drop for articles, videos, tools, papers, and references.

Minimum acceptable capture:

```text
インボックス化して。
URL:
Why saved:
```

Destination:

- `00_Inbox/URLs/`

AI handling:

- Fetch or summarize only when asked and network access is available.
- Save source information in `04_Resources/`.
- Create a permanent note only when the source produces a durable idea.
- Keep copyright-safe summaries rather than long pasted excerpts.

## 5. Manual Maintenance

Manual edits are the fallback path for rare corrections.

Destination:

- `00_Inbox/Manual/`

Use manual notes for:

- Fixing a wrong title
- Marking something sensitive
- Recording a correction
- Asking AI to merge or split notes

AI handling:

- Treat manual notes as high-priority instructions.
- Do not overwrite existing notes without preserving meaning.
- Ask before deleting or heavily rewriting personal notes.

## Daily Operating Loop

1. Capture from any entrance.
2. Keep everything raw in `00_Inbox/{source}/`.
3. Ask AI to triage inbox notes.
4. Review only the short processing summary.
5. Commit and push the vault when the result looks safe.
