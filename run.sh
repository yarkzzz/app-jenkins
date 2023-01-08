set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo 'Visit http://domain:3000 to see your Node.js/React application in action.'
