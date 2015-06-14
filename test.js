var webdriverio = require('webdriverio');
var options = {
    desiredCapabilities: {
        browserName: 'chrome'
    }
};
var client = webdriverio.remote(options);

client
    .init()
    .url('http://www.google.com')
    .getTitle(function(err, title) {
        console.log('Title was: ' + title);
    })
    .end();
