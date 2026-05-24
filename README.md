# my-app

Minimal Python application workspace.

## Layout

| Path | Purpose |
| --- | --- |
| `00_Rules/` | Development rules copied into this repository |
| `src/my_app/` | Application package |
| `tests/` | pytest test suite |
| `Dockerfile` | Reproducible Python development image |
| `docker-compose.yml` | Local command surface for build, run, and checks |

## Commands

```powershell
docker-compose build app
docker-compose run --rm app python -m my_app
docker-compose run --rm app pytest
docker-compose run --rm app ruff check .
docker-compose run --rm app mypy src tests
docker-compose run --rm app black --check .
docker-compose run --rm app isort --check-only .
```
