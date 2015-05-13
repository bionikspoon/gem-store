'use strict'

describe 'Service: myValue', ->

  # load the service's module
  beforeEach module 'gemStoreApp'

  # instantiate service
  myValue = {}
  beforeEach inject (_myValue_) ->
    myValue = _myValue_

  it 'should do something', ->
    expect(!!myValue).toBe true
