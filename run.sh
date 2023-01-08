#!/usr/bin/env sh

set -x
npm start & curl http://localhost:8065 &
sleep 1
echo $! > .pidfile
set +x

echo 'Visit http://domain:8065 to see your Node.js application in action.'
