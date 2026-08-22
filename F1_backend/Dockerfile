FROM python:3.12-alpine AS base
WORKDIR /app
RUN apk add --no-cache postgresql-client

ENTRYPOINT ["/app/entrypoint.sh"]
RUN adduser -D admin

FROM base AS dev
COPY requirements*.txt .
RUN pip install -r requirements-dev.txt --no-cache-dir
COPY . .
RUN chown -R admin:admin /app
USER admin

FROM base AS prod
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
RUN chown -R admin:admin /app
USER admin
