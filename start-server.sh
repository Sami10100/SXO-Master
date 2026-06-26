#!/bin/bash
# Trap signals to prevent killing
trap "" SIGHUP SIGTERM
cd /home/z/my-project
exec bun run dev
