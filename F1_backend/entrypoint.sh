#!/bin/sh
set -e
echo "Ожидание запуска postgres"
until pg_isready -h "$POSTGRES_HOST" -p "$POSTGRES_PORT" >/dev/null 2>&1; do
    echo "недоступно, ждём..."
    sleep 1
done
echo "Передача управления"
exec "$@"
