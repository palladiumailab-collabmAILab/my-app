# Mobile Setup Guide

This guide keeps mobile capture simple. The owner should not need to classify notes while capturing.

## Recommended Minimum Setup

Use one shared rule:

```text
Every mobile capture starts with: インボックス化して
```

## iPhone with Siri

Target folder:

- `00_Inbox/Siri/`

Recommended detailed setup:

- `iphone-siri-setup.md`

Shortcut idea:

1. Dictate text.
2. Prefix the capture with `インボックス化して`.
3. Ask for a short title, or use the current timestamp.
4. Save it into the vault folder.
5. Sync the repository later.

Suggested note body:

```markdown
---
type: inbox
status: unprocessed
source: siri
created: YYYY-MM-DDTHH:mm:ss
updated: YYYY-MM-DDTHH:mm:ss
tags:
  - inbox
  - capture/siri
---

# Title

## Raw Capture

Dictated text here.

## AI Request

- [ ] Clean up transcription only when obvious.
- [ ] Extract tasks, decisions, questions, and related notes.
```

## Android with Gemini

Target folder:

- `00_Inbox/Gemini/`

Recommended Gemini instruction:

```text
インボックス化して。
```

Then place the result into `00_Inbox/Gemini/`.

## Web LLMs

Target folder:

- `00_Inbox/WebLLM/`

At the end of a useful conversation, ask:

```text
インボックス化して。
```

Paste the output into a new note.

## URL Capture

Target folder:

- `00_Inbox/URLs/`

Minimum useful format:

```markdown
インボックス化して。

# URL title or timestamp

URL:
Why saved:
```

The owner can leave `Why saved` blank. AI will infer carefully and ask if it matters.

## Manual Capture

Target folder:

- `00_Inbox/Manual/`

Use this only for corrections and emergency notes.

Examples:

- "This project note is wrong; merge it with X."
- "This contains private information; do not commit yet."
- "This task is done."
