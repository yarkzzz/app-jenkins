#!/usr/bin/env sh
set -x
node app.js &
sleep 1
echo $! > .pidfile
set +x

echo 'Visit http://domain:3000 to see your Node.js/React application in action.'
