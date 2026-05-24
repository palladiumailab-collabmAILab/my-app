FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PIP_NO_CACHE_DIR=1

WORKDIR /workspace

COPY pyproject.toml README.md ./
COPY 20_Source ./20_Source

RUN python -m pip install --upgrade pip \
    && python -m pip install -e ".[dev]"

CMD ["python", "-m", "my_app"]
