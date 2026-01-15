#!/bin/sh
# Wait until Docker daemon inside green-agent is ready

echo "Waiting for green-agent Docker daemon..."
while ! docker -H tcp://green-agent:2375 info >/dev/null 2>&1; do
    sleep 1
done

echo "Docker daemon is ready!"
exec "$@"
