'use strict'

describe 'Service: layoutService', ->

  # load the service's module
  beforeEach module 'gemStoreApp'

  # instantiate service
  layoutService = {}
  beforeEach inject (_layoutService_) ->
    layoutService = _layoutService_

  it 'should do something', ->
    expect(!!layoutService).toBe true
