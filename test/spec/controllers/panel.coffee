'use strict'

describe 'Controller: PanelCtrl', ->

  # load the controller's module
  beforeEach module 'gemStoreApp'

  PanelCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PanelCtrl = $controller 'PanelCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
