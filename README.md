# my-app

Minimal Python application workspace.

## Layout

| Path | Purpose |
| --- | --- |
| `00_Rules/` | Development rules copied into this repository |
| `10_Specifications/` | Specification documents and reusable specification templates |
| `20_Source/src/my_app/` | Application package |
| `20_Source/tests/` | pytest test suite |
| `30_Docker/` | Docker development files |

## Commands

```powershell
docker-compose -f 30_Docker/docker-compose.yml build app
docker-compose -f 30_Docker/docker-compose.yml run --rm app python -m my_app
docker-compose -f 30_Docker/docker-compose.yml run --rm app pytest
docker-compose -f 30_Docker/docker-compose.yml run --rm app ruff check .
docker-compose -f 30_Docker/docker-compose.yml run --rm app mypy 20_Source/src 20_Source/tests
docker-compose -f 30_Docker/docker-compose.yml run --rm app black --check .
docker-compose -f 30_Docker/docker-compose.yml run --rm app isort --check-only .
```
