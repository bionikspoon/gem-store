'use strict'

###*
 # @ngdoc function
 # @name gemStoreApp.controller:ReviewCtrl
 # @description
 # # ReviewCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
  .controller 'ReviewCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
