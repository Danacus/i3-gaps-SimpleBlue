#!/usr/bin/env sh

# Terminate already running compton instances
killall -q compton

# Wait until the processes have been shut down
while pgrep -u $UID -x compton > /dev/null; do sleep 1; done

compton --config ~/.config/compton.conf -b

echo "Compton launched..."
