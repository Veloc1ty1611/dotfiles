#!/bin/bash

TARGET_DATE="2026-05-03"

TODAY=$(date +%s)
TARGET=$(date -d "$TARGET_DATE" +%s)

SECONDS_LEFT=$((TARGET - TODAY))
DAYS_LEFT=$((SECONDS_LEFT / 86400))

if [ "$DAYS_LEFT" -lt 0 ]; then
  echo "✅ 3 May passed"
else
  echo "⏳ $DAYS_LEFT days to 3 May"
fi
