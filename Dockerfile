FROM python:3.12-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir . mcp-proxy

CMD ["sh", "-c", "mcp-proxy --host=0.0.0.0 --port=${PORT:-8000} --allowed-host=mcp-fiscal-brasil-nico.onrender.com --pass-environment --stateless --allow-origin='*' -- mcp-fiscal-brasil"]
