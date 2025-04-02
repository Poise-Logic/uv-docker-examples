# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

# Copy the application into the container.
COPY . /app

# Set working directory
WORKDIR /app

# Install the application dependencies.
RUN uv sync --frozen --no-cache

# Run the application.
CMD ["/app/.venv/bin/uvicorn", "src.main:app", "--port", "8000", "--host", "0.0.0.0", "--reload"] 