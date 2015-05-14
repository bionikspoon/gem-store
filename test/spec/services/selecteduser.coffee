'use strict'

describe 'Service: selectedUser', ->

  # load the service's module
  beforeEach module 'gemStoreApp'

  # instantiate service
  selectedUser = {}
  beforeEach inject (_selectedUser_) ->
    selectedUser = _selectedUser_

  it 'should do something', ->
    expect(!!selectedUser).toBe true
