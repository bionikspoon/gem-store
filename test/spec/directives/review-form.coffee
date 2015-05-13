'use strict'

describe 'Directive: reviewForm', ->

  # load the directive's module
  beforeEach module 'gemStoreApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<review-form></review-form>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the reviewForm directive'
