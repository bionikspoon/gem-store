'use strict'

describe 'Directive: contactSheet', ->

  # load the directive's module
  beforeEach module 'gemStoreApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<contact-sheet></contact-sheet>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the contactSheet directive'
