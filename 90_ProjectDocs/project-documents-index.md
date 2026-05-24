# Project Documents Index

This directory contains repository maintenance documents, development guides,
and reusable prompt guidance.

Rules, generated specifications, source code, and the knowledge vault live in
separate numbered top-level folders.

## Numbered Top-Level Structure

| Path | Purpose |
| --- | --- |
| `00_Rules/` | ECC rules and owner-specific Codex rules |
| `10_Specifications/` | Generated specification documents and reusable templates |
| `20_Source/` | Application source, tests, infrastructure, and source-specific scripts when needed |
| `30_KnowledgeVault/` | Obsidian-compatible knowledge vault and vault-specific scripts |
| `90_ProjectDocs/` | Repository maps, development guides, prompts, and maintenance docs |

## Project Documents

| Path | Purpose |
| --- | --- |
| `90_ProjectDocs/project/repository-structure.md` | Directory and file purpose guide |
| `90_ProjectDocs/project/documentation-map.md` | Documentation and specification placement map |
| `90_ProjectDocs/project/change-log.md` | Template maintenance history and notable repository changes |
| `90_ProjectDocs/development/docker-development.md` | Docker-based Python development environment commands and notes |
| `90_ProjectDocs/prompts/codex-collaboration-guide.md` | Prompt examples and collaboration guidance for working with Codex |

## Related Entrypoints

| Path | Purpose |
| --- | --- |
| `00_Rules/owner/owner-codex-rules.md` | Owner-specific Codex working rules |
| `00_Rules/ecc/` | Downloaded ECC source rule files |
| `10_Specifications/templates/` | Copyable specification templates |
| `30_KnowledgeVault/` | Obsidian vault |
| `30_KnowledgeVault/scripts/` | Knowledge-vault helper scripts |

## Documentation Principles

- Keep rules, specifications, source code, and project docs in separate folders.
- Prefer formats that are readable in Git and easy to diff.
- Use Markdown for narrative specifications and tables.
- Use Mermaid or PlantUML for diagrams.
- Use OpenAPI YAML for API contracts.
- Use Figma for visual design assets when a design tool is needed, while
  keeping screen specifications in Markdown.
