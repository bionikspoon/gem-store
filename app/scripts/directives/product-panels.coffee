'use strict'

###*
 # @ngdoc directive
 # @name gemStoreApp.directive:productPanels
 # @description
 # # productPanels
###
angular.module 'gemStoreApp'
.directive 'productPanels', ->
    restrict: 'E'
    templateUrl: 'templates/product-panels.html'
    controllerAs: 'panels'
    controller: class
        tab: 1
        selectTab: (setTab) ->
            @tab = setTab

        isSelected: (checkTab) ->
            @tab == checkTab
