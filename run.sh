#!/usr/bin/env sh

set -x
npm start &  
sleep 1
echo $! > .pidfile
curl http://localhost:8065
set +x

echo 'Visit http://domain:8065 to see your Node.js application in action.'
