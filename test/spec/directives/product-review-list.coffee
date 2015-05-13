'use strict'

describe 'Directive: productReviewList', ->

  # load the directive's module
  beforeEach module 'gemStoreApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<product-review-list></product-review-list>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the productReviewList directive'
