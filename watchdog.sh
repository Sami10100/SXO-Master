#!/bin/bash
while true; do
  if ! pgrep -f "next-server" > /dev/null 2>&1; then
    echo "$(date): Restarting server..." >> /home/z/my-project/watchdog.log
    cd /home/z/my-project
    nohup setsid bash -c 'exec bun run dev' > /home/z/my-project/dev.log 2>&1 < /dev/null &
    disown -a 2>/dev/null
    sleep 10
  fi
  sleep 5
done
