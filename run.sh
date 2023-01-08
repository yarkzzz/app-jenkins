set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo 'Visit http://domain:38065 to see your Node.js application in action.'
