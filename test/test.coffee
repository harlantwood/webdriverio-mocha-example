require('chai').should()
webdriverio = require('webdriverio')

describe 'simple test', ->
  it 'should get the title from Google.com', (done) ->
    @timeout 60 * 1000
    options = desiredCapabilities: browserName: 'phantomjs'
    client = webdriverio.remote(options)
    client
    .init()
    .url('http://www.google.com')
    .getTitle((err, title) ->
      console.log 'Title was: ' + title
      title.should.equal 'Google'
      done()
    )
    .end()
