FROM python:3.12-alpine

WORKDIR /app

RUN apk add --no-cache postgresql-client
COPY requirements.txt .
RUN pip install -r requirements.txt  --no-cache-dir

COPY . .
ENTRYPOINT ["/app/entrypoint.sh"]
