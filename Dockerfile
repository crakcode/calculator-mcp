FROM python:3.11-slim

WORKDIR /app

# Copy source
COPY . /app

# Install Python dependencies and the MCP server
RUN pip install --no-cache-dir .

# Use the console script entrypoint
CMD ["calculator-mcp"]