#!/bin/bash
# Prints disk use on / against a warning threshold, then uptime.
THRESHOLD=85
USAGE=$(df --output=pcent /data | tail -n 1 | tr -dc '0-9')
echo "Disk used on /: ${USAGE}%"
if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "WARNING: disk use is above ${THRESHOLD}%"
fi
uptime
