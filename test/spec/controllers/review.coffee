'use strict'

describe 'Controller: ReviewCtrl', ->

  # load the controller's module
  beforeEach module 'gemStoreApp'

  ReviewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ReviewCtrl = $controller 'ReviewCtrl', {
      $scope: scope
    }

  it 'should be empty initially', ->
    expect(ReviewCtrl.review).toEqual {}
