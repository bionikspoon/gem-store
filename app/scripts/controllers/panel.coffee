'use strict'

###*
 # @ngdoc function
 # @name gemStoreApp.controller:PanelCtrl
 # @description
 # # PanelCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
.controller 'PanelCtrl',
    class PanelCtrl
        constructor: ($scope) ->
            $scope.awesomeThings = [
                'HTML5 Boilerplate'
                'AngularJS'
                'Karma'
            ]
        tab: 1
        selectTab: (setTab) ->
            @tab = setTab

        isSelected: (checkTab) ->
            @tab == checkTab


