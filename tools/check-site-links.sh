#!/usr/bin/env bash
set -euo pipefail

BASE="https://typemasterpro.xyz"

urls=(
  "$BASE/"
  "$BASE/typing-test"
  "$BASE/games"
  "$BASE/learn/typing"
  "$BASE/learn/how-to-type-faster"
  "$BASE/exams"
  "$BASE/book"
)

for url in "${urls[@]}"; do
  printf "%-70s " "$url"
  code=$(curl -L -s -o /dev/null -w '%{http_code}' "$url")
  echo "$code"
done
