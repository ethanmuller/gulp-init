require '../build/vendor/vendor.js'
require '../build/js/app.js'

describe 'a suite', ->
  it 'contains a spec with an exception', ->
    expect(true).toBe(true)
    expect(shakeLink).toBeTruthy()
