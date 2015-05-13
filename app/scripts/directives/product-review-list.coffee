'use strict'

###*
 # @ngdoc directive
 # @name gemStoreApp.directive:productReviewList
 # @description
 # # productReviewList
###
angular.module 'gemStoreApp'
  .directive 'productReviewList', ->
    restrict: 'E'
    templateUrl: 'views/templates/product-review-list.html'
