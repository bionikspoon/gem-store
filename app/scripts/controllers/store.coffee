'use strict'
gem =
    name: 'Diamond'
    price: 2.95
    description: '...'
###*
 # @ngdoc function
 # @name gemStoreApp.controller:StoreCtrl
 # @description
 # # StoreCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
.controller 'StoreCtrl', ($scope) ->
    $scope.awesomeThings = [
        'HTML5 Boilerplate'
        'AngularJS'
        'Karma'
    ]
    @product = gem
