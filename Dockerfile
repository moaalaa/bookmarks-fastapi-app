FROM python:3.14-trixie

WORKDIR /app

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

COPY pyproject.toml uv.lock /app/

RUN uv sync

COPY . .

EXPOSE 8000

CMD ["uv", "run", "fastapi", "dev", "--host", "0.0.0.0"]


