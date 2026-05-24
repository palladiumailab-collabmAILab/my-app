# Change Log

This file records notable maintenance changes to this application workspace.


## 2026-05-24

- Reorganized the repository into numbered top-level folders:
  `00_Rules/`, `10_Specifications/`, `20_Source/`, `30_KnowledgeVault/`, and
  `90_ProjectDocs/`.
- Centralized downloaded ECC rules under `00_Rules/ecc/`.
- Moved owner-specific Codex rules to `00_Rules/owner/owner-codex-rules.md`.
- Moved reusable specification templates to `10_Specifications/templates/`.
- Moved application source, tests, source-specific scripts, and infrastructure
  under `20_Source/`.
- Moved the Obsidian vault and knowledge-vault scripts to
  `30_KnowledgeVault/`.
- Added script-folder README files so source-side and knowledge-vault helper
  scripts are classified by purpose.
- Updated Python, Docker, and documentation references for the numbered
  structure.
- Added root `AGENTS.md` so repository rules are discoverable before app work.

## 2026-05-19

- Initialized `my-app` as a private application repository from the Codex app template.
- Renamed the Python package scaffold to `my_app`.
## Template Baseline Imported On 2026-05-19

- Added an Obsidian-compatible `vault/` for GitHub-backed knowledge
  management.
- Added AI gateway entrypoints for Siri, Gemini, Web LLM conversations, URL
  drops, and manual maintenance.
- Added GitHub Issue templates for mobile-first AI inbox and AI question
  workflows.
- Added `skills/knowledge-inbox` and short command aliases for inbox, question,
  and full issue processing.
- Added a unified `インボックス化して` capture prompt for every information
  entrance.
- Added an iPhone Siri shortcut setup guide for voice-to-inbox capture.
- Added AI operating rules for inbox triage, weekly review, and GitHub sync.
- Added reusable note templates for inbox, daily, project, area, resource,
  permanent, meeting, and decision notes.
- Added PowerShell helper scripts for quick inbox and daily note creation.
- Moved the Docker image definition into `infra/docker/` and documented the
  repository structure.
- Reframed the repository as a reusable Python Codex app workbench template.
- Removed app-specific concept documents from the template baseline.
- Added reusable documentation templates for product, requirements, UI, API,
  architecture, decisions, tests, and operations.
- Template baseline included a generic sample package before this app was renamed.
