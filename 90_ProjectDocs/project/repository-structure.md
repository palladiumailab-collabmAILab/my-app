# Repository Structure

This document explains the numbered repository layout and why files live where
they do.

## Design Principles

- Use numbered top-level folders so major responsibilities are easy to scan.
- Keep rules, specifications, source code, knowledge notes, and project docs in
  separate folders.
- Keep downloaded ECC rule files together under `00_Rules/ecc/`.
- Keep owner-specific Codex rules under `00_Rules/owner/`.
- Keep generated specification documents and reusable templates under
  `10_Specifications/`.
- Keep application source code, tests, source-specific scripts, and
  infrastructure under `20_Source/`.
- Keep the Obsidian vault under `30_KnowledgeVault/` so Obsidian can open that
  folder directly.
- Keep knowledge-vault scripts under `30_KnowledgeVault/scripts/`.
- Keep repository maps, development guides, prompts, and maintenance logs under
  `90_ProjectDocs/`.
- Keep root-level tool entrypoints at the repository root when common tools
  expect them there.

## Root Entrypoints

| Path | Purpose | Why It Stays Here |
| --- | --- | --- |
| `README.md` | Repository overview and usage guide | GitHub displays this file by default |
| `AGENTS.md` | Repository-level instructions for Codex and compatible agents | Agent tools discover this conventional file first |
| `pyproject.toml` | Python package metadata, tool config, and test config | Python tooling expects this at the root |
| `docker-compose.yml` | Main Docker development command surface | Keeps `docker-compose run ...` commands short |
| `.gitignore` | Git ignore rules | Standard Git root configuration |
| `.dockerignore` | Docker build ignore rules | Docker reads this from the build context root |
| `.github/` | GitHub issue templates and repository metadata | GitHub expects this conventional path |

## Numbered Directories

| Path | Purpose |
| --- | --- |
| `00_Rules/` | All collaboration and workflow rules |
| `00_Rules/ecc/` | Downloaded ECC source rules, agents, and skills |
| `00_Rules/owner/` | Owner-specific Codex rules |
| `10_Specifications/` | Specification documents and templates |
| `10_Specifications/templates/` | Copyable templates for generated app specifications |
| `20_Source/` | Source-side implementation materials |
| `20_Source/src/` | Python package source |
| `20_Source/tests/` | Test suite |
| `20_Source/infra/` | Infrastructure and environment implementation files |
| `20_Source/scripts/` | Source-specific helper scripts |
| `30_KnowledgeVault/` | Obsidian-compatible knowledge vault |
| `30_KnowledgeVault/scripts/` | Knowledge-vault helper scripts |
| `90_ProjectDocs/` | Repository documentation, development guides, and prompts |

## Source And Test Scaffold

| Path | Purpose |
| --- | --- |
| `20_Source/src/my_app/__init__.py` | Minimal package metadata |
| `20_Source/src/my_app/__main__.py` | Minimal executable entrypoint for environment verification |
| `20_Source/tests/test_environment.py` | Confirms the package and Docker-based test setup work |

## Notes For New Projects

When creating a real app from this template:

1. Rename `my_app` if this repository adopts a more specific package name.
2. Update `pyproject.toml` metadata, package discovery, and coverage target.
3. Copy only the necessary files from `10_Specifications/templates/` into active
   folders under `10_Specifications/`.
4. Keep rules in `00_Rules/`, generated specs in `10_Specifications/`, and code
   in `20_Source/`.
5. Keep Docker-based verification commands current in
   `90_ProjectDocs/development/docker-development.md`.
