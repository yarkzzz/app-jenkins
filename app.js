const express = require('express');
const morgan = require('morgan'); // import morgan
const rfs = require("rotating-file-stream");

const app = express();

// MORGAN SETUP
// create a log stream
const rfsStream = rfs.createStream("log.txt", {
   size: '10M', // rotate every 10 MegaBytes written
   interval: '1d', // rotate daily
   compress: 'gzip' // compress rotated files
})

// add log stream to morgan to save logs in file
app.use(morgan("dev", {
   stream: rfsStream
}));

// another logger to show logs in console as well
app.use(morgan(':method :url :status'));

app.listen(8065, () => {
   console.debug('App listening on :3000');
});