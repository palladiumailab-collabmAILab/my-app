# Docker Development Environment

## Purpose

Use Docker as the standard Python development environment so contributors do
not need to install Python dependencies on the host machine.

## Files

| File | Purpose |
| --- | --- |
| `20_Source/infra/docker/Dockerfile` | Defines the Python 3.12 development image and installs project dependencies |
| `docker-compose.yml` | Defines the development service and source mount |
| `.dockerignore` | Keeps build context small and excludes local caches/secrets |
| `pyproject.toml` | Defines the Python package, dev tools, and test configuration |

## Commands Used To Build And Verify

Use Docker Compose v2 standalone command on this machine:

```powershell
docker-compose build app
docker-compose run --rm app python -m my_app
docker-compose run --rm app pytest
docker-compose run --rm app ruff check .
docker-compose run --rm app mypy 20_Source/src 20_Source/tests
docker-compose run --rm app black --check .
docker-compose run --rm app isort --check-only .
```

If `docker compose` is available in another environment, the equivalent commands
are:

```bash
docker compose build app
docker compose run --rm app python -m my_app
docker compose run --rm app pytest
docker compose run --rm app ruff check .
docker compose run --rm app mypy 20_Source/src 20_Source/tests
docker compose run --rm app black --check .
docker compose run --rm app isort --check-only .
```

## Development Notes

- Do not install Python dependencies directly on the host for routine work.
- Add Python dependencies to `pyproject.toml`.
- Run tests and checks inside the container.
- Keep secrets out of the image and out of committed files.
