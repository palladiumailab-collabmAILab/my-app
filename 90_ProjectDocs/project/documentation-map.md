# Documentation Map

This map defines where repository documents and generated specifications should
live.

## Numbered Repository Structure

```text
00_Rules/
  ecc/
    AGENTS.md
    RULES.md
    agents/
    rules/
    skills/
  owner/
    owner-codex-rules.md
10_Specifications/
  templates/
    api/
    architecture/
    decisions/
    operations/
    product/
    requirements/
    tests/
    ui/
20_Source/
  src/
  tests/
  infra/
  scripts/
30_KnowledgeVault/
  00_Inbox/
  01_Daily/
  02_Projects/
  03_Areas/
  04_Resources/
  05_Permanent/
  06_Archive/
  90_Meta/
  scripts/
    knowledge/
90_ProjectDocs/
  README.md
  project-documents-index.md
  development/
  project/
  prompts/
```

## Generated Specification Structure

Generated specification documents should live under `10_Specifications/`, not
under `90_ProjectDocs/`.

Recommended active structure:

```text
10_Specifications/
  product/
    project-charter.md
    vision.md
  requirements/
    acceptance-criteria.md
    glossary.md
    requirements-list.md
    scope.md
    use-cases.md
  ui/
    design-brief.md
    screen-spec.md
    screen-transitions.md
  api/
    openapi.yaml
  architecture/
    adr/
      0001-record-architecture-decisions.md
    c4-context.md
    technical-design.md
  decisions/
    decision-log.md
  tests/
    test-strategy.md
  operations/
    runbook.md
```

Copy only the templates that are useful for the app being built. Avoid creating
documents that will not be maintained. If a document is intentionally deferred,
state the reason in the relevant specification or decision log.
