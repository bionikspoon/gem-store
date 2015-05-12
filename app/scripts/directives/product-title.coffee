'use strict'

###*
 # @ngdoc directive
 # @name gemStoreApp.directive:productTitle
 # @description
 # # productTitle
###
angular.module 'gemStoreApp'
  .directive 'productTitle', ->
    restrict: 'E'
    templateUrl: 'templates/product-title.html'
