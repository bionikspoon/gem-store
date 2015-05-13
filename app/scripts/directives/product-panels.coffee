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
    templateUrl: 'views/templates/product-panels.html'

