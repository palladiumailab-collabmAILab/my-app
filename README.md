# My App

This repository is a private Python application workspace prepared from the
`my-python-app` template. It includes Docker-based development, selected ECC
rules, Codex collaboration guidance, documentation templates, and a knowledge
vault.

## Status

- Private GitHub repository initialized
- Docker-based Python development environment
- Python package: `my_app`
- Root `AGENTS.md` entrypoint for repository-specific development rules
- Numbered top-level directories for rules, specifications, source, vault, and
  project documentation
- Selected ECC rule files centralized under `00_Rules/ecc/` without rewriting
- Owner-specific Codex working rules centralized under `00_Rules/owner/`
- Obsidian-compatible knowledge vault for AI-assisted information management
- Documentation templates for project planning, requirements, architecture,
  API design, testing, decisions, and operations

## Directory Structure

| Path | Purpose |
| --- | --- |
| `00_Rules/` | ECC rules and owner-specific Codex rules |
| `10_Specifications/` | Generated specification documents and reusable spec templates |
| `20_Source/` | Application source code, tests, scripts, and infrastructure files |
| `30_KnowledgeVault/` | Obsidian-compatible personal knowledge vault |
| `90_ProjectDocs/` | Repository maps, development guides, prompts, and maintenance docs |

Root-level tool files such as `pyproject.toml`, `docker-compose.yml`, and
`.github/` remain at the repository root because external tools expect those
conventional paths.

## Development Environment

This project uses Docker for Python development to avoid host environment drift.
See:

- `90_ProjectDocs/development/docker-development.md`

Useful commands:

```powershell
docker-compose build app
docker-compose run --rm app python -m my_app
docker-compose run --rm app pytest
docker-compose run --rm app ruff check .
docker-compose run --rm app mypy 20_Source/src 20_Source/tests
docker-compose run --rm app black --check .
docker-compose run --rm app isort --check-only .
```

## Collaboration Rules

This repository uses selected original rule files from
`affaan-m/ECC` without rewriting their contents. See:

- `00_Rules/ecc/AGENTS.md`
- `00_Rules/ecc/RULES.md`
- `00_Rules/ecc/rules/common/`
- `00_Rules/ecc/rules/python/`
- `00_Rules/ecc/agents/python-reviewer.md`
- `00_Rules/ecc/skills/python-patterns/SKILL.md`
- `00_Rules/ecc/skills/python-testing/SKILL.md`

Project-specific owner preferences live separately in:

- `00_Rules/owner/owner-codex-rules.md`

Project-owned documents are indexed in:

- `90_ProjectDocs/README.md`
- `90_ProjectDocs/project/repository-structure.md`

## Knowledge Vault

This repository includes an Obsidian vault in:

- `30_KnowledgeVault/`

Use it as a GitHub-backed personal knowledge base. Raw thoughts go into
`30_KnowledgeVault/00_Inbox/`; AI triage rules and templates live in
`30_KnowledgeVault/90_Meta/`. Open `30_KnowledgeVault/` directly in Obsidian.

## Documentation Templates

Reusable document templates live in:

- `10_Specifications/templates/`

Copy only the documents that are useful for this app into active project
folders, then keep them maintained as the application evolves.
