#!/bin/bash
COUNT=1
MAX=30
SLEEP=2
while [[ $COUNT != $MAY ]]; do
  echo "Checking for Jellyfin readyness $COUNT"
  if curl "http://jellyfin:8096" 2>/dev/null; then
    echo "Jellyfin ready. Starting"
    break
  else
    if [[ $COUNT == $MAX ]]; then
      echo "Cannot connect to Jellyfin. Leaving"
      exit -1
    fi
    COUNT=$(expr $COUNT + 1)
    sleep $SLEEP
  fi
done
mopidy --config /config/mopidy.conf
