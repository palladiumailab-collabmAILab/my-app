# Test Strategy

## Test Levels

| Level | Purpose | Tooling | Owner |
| --- | --- | --- | --- |
| Unit | Verify isolated behavior | pytest |  |
| Integration | Verify component interaction | pytest |  |
| E2E | Verify user workflows |  |  |

## Quality Gates

| Gate | Command or Evidence | Required |
| --- | --- | --- |
| Formatting | `docker-compose run --rm app black --check .` | Yes |
| Import order | `docker-compose run --rm app isort --check-only .` | Yes |
| Lint | `docker-compose run --rm app ruff check .` | Yes |
| Type check | `docker-compose run --rm app mypy 20_Source/src 20_Source/tests` | Yes |
| Tests | `docker-compose run --rm app pytest` | Yes |

## Test Data

Describe representative test data and privacy constraints.
