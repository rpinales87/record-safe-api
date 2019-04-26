#!/bin/bash
ARTIST="turista"  TITLE="una vaina" GENRE="rock" YEAR="2019"
TOKEN="BAhJIiUzODUwZGNhM2I0MjFlNTJmZjZjODI0YmQ0NGRhMjA3OQY6BkVG--bc168eaac693f6d7c5fd555c95c03715435c6694"

curl "http://localhost:4741/records" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "record": {
      "title": "'"${TITLE}"'",
      "genre": "'"${GENRE}"'",
      "year": "'"${YEAR}"'",
      "artist": "'"${ARTIST}"'"
    }
  }'

echo
