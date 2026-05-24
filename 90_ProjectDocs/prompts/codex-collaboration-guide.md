# Codex Collaboration Guide

This guide gives reusable prompt patterns for working with Codex on this
repository.

## Request Pattern

Include these points when asking Codex to implement a change:

1. Objective
2. Scope
3. Constraints
4. Expected verification
5. Whether to commit and push

```text
Objective:
Describe what to build or change.

Scope:
List the files, features, or behavior that should be touched.

Constraints:
- Follow 00_Rules/ecc/ and 00_Rules/owner/owner-codex-rules.md.
- Keep rules, generated specifications, and source code in separate numbered folders.
- Use Docker for Python development and verification.
- Keep downloaded ECC rule files unchanged unless explicitly requested.

Verification:
Run the relevant Docker-based tests and quality checks.

Git:
Create a reversible Codex work branch when changing existing files.
Commit and push when the work is complete.
```

## Common Requests

### Start A New App

```text
Use this repository as the project template for a new Python app.
Rename the package and project metadata for the app.
Create the minimum useful specs from 10_Specifications/templates/.
Keep generated specs in 10_Specifications/ and implementation in 20_Source/.
Keep the implementation small and verify it inside Docker.
Commit and push the result when complete.
```

### Add A Feature

```text
Implement the following feature:
...

Before coding, create or update the relevant requirements, external design,
internal design, API, UI, ADR, and test design documents from
10_Specifications/templates/.
Stop for review before generating or changing application code.
Then implement the feature, add focused tests, run Docker-based checks, commit,
and push.
```

### Review Work

```text
Review the current changes with a focus on bugs, regressions, missing tests,
security concerns, documentation drift, and directory placement drift.
List findings first with file and line references.
Do not modify files unless I ask you to fix the issues.
```

### Prepare A Release

```text
Check whether the project is ready to release.
Review specifications, tests, Docker commands, API contracts, and known decisions.
Update the runbook or decision log if needed.
Run the quality gates and summarize any remaining risks.
```

## Good Habits

- Keep one request focused on one milestone.
- State whether commit and push are expected.
- For UI work, ask for browser-based visual verification.
- For API work, ask for OpenAPI updates before implementation.
- For architecture changes, ask for an ADR.
- For risky edits, ask Codex to use a dedicated work branch.
