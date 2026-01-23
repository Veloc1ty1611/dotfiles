#!/bin/bash

FILE="$HOME/.config/waybar/scripts/nofap_days"

# Create file if missing
[[ ! -f "$FILE" ]] && echo 0 >"$FILE"

DAYS=$(cat "$FILE")

case "$1" in
inc)
  DAYS=$((DAYS + 1))
  echo "$DAYS" >"$FILE"
  ;;
reset)
  echo 0 >"$FILE"
  DAYS=0
  ;;
esac

echo "🔥 NoFap: $DAYS day(s)"
