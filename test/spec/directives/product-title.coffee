'use strict'

describe 'Directive: productTitle', ->

  # load the directive's module
  beforeEach module 'gemStoreApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<product-title></product-title>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the productTitle directive'
